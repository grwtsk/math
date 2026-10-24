# IsPrimitive.dvd_of_fraction_map_dvd_fraction_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b24164d7651df3b235a6975d83a95c5ba669f34d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ecff7df-65b6-7216-1a88-7301f64855ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17ebe0b2-d515-1020-11b8-f9784f902195",
  "kind": "theorem",
  "lexical_name": "IsPrimitive.dvd_of_fraction_map_dvd_fraction_map",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isprimitive-dvd-of-fraction-map-dvd-fraction-map--f96beb57b71129f7e069c83c",
  "source": {
    "blob": "b24164d7651df3b235a6975d83a95c5ba669f34d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 292,
    "path": "GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96beb57b71129f7e069c83c86d7a9f27a7fcf9034fc5ce0e4c172cce2cebec5",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ebe0b2-d515-1020-11b8-f9784f902195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitive.dvd_of_fraction_map_dvd_fraction_map {p q : R[X]} (hp : p.IsPrimitive)
    (hq : q.IsPrimitive) (h_dvd : p.map (algebraMap R K) ∣ q.map (algebraMap R K)) : p ∣ q := by
  rcases h_dvd with ⟨r, hr⟩
  obtain ⟨⟨s, s0⟩, hs⟩ := integerNormalization_map_to_map R⁰ r
  rw [Subtype.coe_mk, Algebra.smul_def, algebraMap_apply] at hs
  have h : p ∣ q * C s := by
    use integerNormalization R⁰ r
    apply map_injective (algebraMap R K) (IsFractionRing.injective _ _)
    rw [Polynomial.map_mul, Polynomial.map_mul, hs, hr, mul_assoc, mul_comm r]
    simp
  rw [← hp.dvd_primPart_iff_dvd, primPart_mul, hq.primPart_eq, Associated.dvd_iff_dvd_right] at h
  · exact h
  · symm
    rcases isUnit_primPart_C s with ⟨u, hu⟩
    use u
    rw [hu]
  iterate 2
    apply mul_ne_zero hq.ne_zero
    rw [Ne.def, C_eq_zero]
    contrapose! s0
    simp [s0, mem_nonZeroDivisors_iff_ne_zero]
#align polynomial.is_primitive.dvd_of_fraction_map_dvd_fraction_map Polynomial.IsPrimitive.dvd_of_fraction_map_dvd_fraction_map

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b24164d7651df3b235a6975d83a95c5ba669f34d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# IsPrimitive.irreducible_iff_irreducible_map_fraction_map

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
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17eaab3f-a054-6c9f-54e9-c29d479a5322",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b57cdc3-b069-518d-515d-1b4c5c6f8c97",
  "kind": "theorem",
  "lexical_name": "IsPrimitive.irreducible_iff_irreducible_map_fraction_map",
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
  "slug": "isprimitive-irreducible-iff-irreducible-map-fraction-map--af211b5d4783ba077d4b6167",
  "source": {
    "blob": "b24164d7651df3b235a6975d83a95c5ba669f34d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 250,
    "path": "GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af211b5d4783ba077d4b6167b9f4993bbe8c9cf914938b0708f230d63e6da504",
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

Occurrence: `result:7b57cdc3-b069-518d-515d-1b4c5c6f8c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitive.irreducible_iff_irreducible_map_fraction_map {p : R[X]} (hp : p.IsPrimitive) :
    Irreducible p ↔ Irreducible (p.map (algebraMap R K)) := by
  -- Porting note: was `(IsFractionRing.injective _ _)`
  refine'
    ⟨fun hi => ⟨fun h => hi.not_unit (hp.isUnit_iff_isUnit_map.2 h), fun a b hab => _⟩,
      hp.irreducible_of_irreducible_map_of_injective (IsFractionRing.injective R K)⟩
  obtain ⟨⟨c, c0⟩, hc⟩ := integerNormalization_map_to_map R⁰ a
  obtain ⟨⟨d, d0⟩, hd⟩ := integerNormalization_map_to_map R⁰ b
  rw [Algebra.smul_def, algebraMap_apply, Subtype.coe_mk] at hc hd
  rw [mem_nonZeroDivisors_iff_ne_zero] at c0 d0
  have hcd0 : c * d ≠ 0 := mul_ne_zero c0 d0
  rw [Ne.def, ← C_eq_zero] at hcd0
  have h1 : C c * C d * p = integerNormalization R⁰ a * integerNormalization R⁰ b := by
    apply map_injective (algebraMap R K) (IsFractionRing.injective _ _) _
    rw [Polynomial.map_mul, Polynomial.map_mul, Polynomial.map_mul, hc, hd, map_C, map_C, hab]
    ring
  obtain ⟨u, hu⟩ :
    Associated (c * d)
      (content (integerNormalization R⁰ a) * content (integerNormalization R⁰ b)) := by
    rw [← dvd_dvd_iff_associated, ← normalize_eq_normalize_iff, normalize.map_mul,
      normalize.map_mul, normalize_content, normalize_content, ←
      mul_one (normalize c * normalize d), ← hp.content_eq_one, ← content_C, ← content_C, ←
      content_mul, ← content_mul, ← content_mul, h1]
  rw [← RingHom.map_mul, eq_comm, (integerNormalization R⁰ a).eq_C_content_mul_primPart,
    (integerNormalization R⁰ b).eq_C_content_mul_primPart, mul_assoc, mul_comm _ (C _ * _), ←
    mul_assoc, ← mul_assoc, ← RingHom.map_mul, ← hu, RingHom.map_mul, mul_assoc, mul_assoc, ←
    mul_assoc (C (u : R))] at h1
  have h0 : a ≠ 0 ∧ b ≠ 0 := by
    classical
    rw [Ne.def, Ne.def, ← not_or, ← mul_eq_zero, ← hab]
    intro con
    apply hp.ne_zero (map_injective (algebraMap R K) (IsFractionRing.injective _ _) _)
    simp [con]
  rcases hi.isUnit_or_isUnit (mul_left_cancel₀ hcd0 h1).symm with (h | h)
  · right
    apply
      isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart h0.2
        (isUnit_of_mul_isUnit_right h)
  · left
    apply isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart h0.1 h
#align polynomial.is_primitive.irreducible_iff_irreducible_map_fraction_map Polynomial.IsPrimitive.irreducible_iff_irreducible_map_fraction_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variantf74486b464e252ed05a68f4cce9ad91eb4a3af1b58ba668c39bd4fcea230510b.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b24164d7651df3b235a6975d83a95c5ba669f34d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tendsTo_eulerProduct_ofPowerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27326b9db3be3a0c673c1ffe87a941125a4c633d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78a8a3c1-210e-8931-1b4b-ec8f0e4874b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6a1da97-08d8-7193-52e6-d9378b370a33",
  "kind": "theorem",
  "lexical_name": "tendsTo_eulerProduct_ofPowerSeries",
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
  "slug": "tendsto-eulerproduct-ofpowerseries--97f0fe1507c274bb17abea21",
  "source": {
    "blob": "27326b9db3be3a0c673c1ffe87a941125a4c633d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97f0fe1507c274bb17abea21902123e244ebe987fc6c838fa0b8a031a271af6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6a1da97-08d8-7193-52e6-d9378b370a33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsTo_eulerProduct_ofPowerSeries (q : ι → ℕ) [hq : Northcott q]
    (f : ι → PowerSeries R) (hf : ∀ i, (f i).constantCoeff = 1) (n : ℕ) :
    ∀ᶠ s in atTop, (∏ i ∈ s, ofPowerSeries (q i) (f i)) n =
      eulerProduct (fun i ↦ ofPowerSeries (q i) (f i)) n := by
  apply tendsTo_eulerProduct_of_tendsTo
  refine fun n ↦ (tendsto_atTop.mp ((northcott_iff_tendsto q).mp hq) (n + 1)).mono fun i hi ↦ ?_
  rcases n with rfl | rfl | n
  · simp
  · simp [hf]
  · have hqi : 1 < q i := by lia
    rw [ofPowerSeries_apply hqi, Function.extend_apply', Pi.zero_apply, one_apply_ne (by lia)]
    rintro ⟨k, hk⟩
    have h : k ≠ 0 := fun h ↦ by simp_all
    grind [Nat.le_pow h.pos (a := q i)]

end EulerProduct

end ArithmeticFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27326b9db3be3a0c673c1ffe87a941125a4c633d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

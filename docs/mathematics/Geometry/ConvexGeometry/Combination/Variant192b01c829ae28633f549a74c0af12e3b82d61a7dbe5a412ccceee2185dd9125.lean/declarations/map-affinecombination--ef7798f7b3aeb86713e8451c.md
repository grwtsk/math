# map_affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c193022-e7d2-da13-f331-25b8649fbb26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fea53506-9820-59d3-1664-c00e47b6d581",
  "kind": "theorem",
  "lexical_name": "map_affineCombination",
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
  "slug": "map-affinecombination--ef7798f7b3aeb86713e8451c",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 572,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7798f7b3aeb86713e8451c4898b43ea22bbbb519e1d4cb5dc352d3504bb4b2",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fea53506-9820-59d3-1664-c00e47b6d581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_affineCombination {V₂ P₂ : Type*} [AddCommGroup V₂] [Module k V₂] [AffineSpace V₂ P₂]
    (p : ι → P) (w : ι → k) (hw : s.sum w = 1) (f : P →ᵃ[k] P₂) :
    f (s.affineCombination k p w) = s.affineCombination k (f ∘ p) w := by
  have b := Classical.choice (inferInstance : AffineSpace V P).nonempty
  have b₂ := Classical.choice (inferInstance : AffineSpace V₂ P₂).nonempty
  rw [s.affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one w p hw b,
    s.affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one w (f ∘ p) hw b₂, ←
    s.weightedVSubOfPoint_vadd_eq_of_sum_eq_one w (f ∘ p) hw (f b) b₂]
  simp only [weightedVSubOfPoint_apply, RingHom.id_apply, AffineMap.map_vadd, map_smulₛₗ,
    AffineMap.linearMap_vsub, map_sum, Function.comp_apply]

/-- The value of `affineCombination`, where the given points take only two values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

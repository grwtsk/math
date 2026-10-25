# baseChange_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "700a6ef537038d95b67f7cadcf73581f590ee6a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 633,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3c22696-45a8-9571-a016-08b579956f7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3df7a059-ca60-d99a-3d71-3ca36492e33a",
  "kind": "lemma",
  "lexical_name": "baseChange_add",
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
  "slug": "basechange-add--db46b56a46f7a484f9d06109",
  "source": {
    "blob": "700a6ef537038d95b67f7cadcf73581f590ee6a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 633,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db46b56a46f7a484f9d06109194585be0fac84230a728d0ce621312e4fd923f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df7a059-ca60-d99a-3d71-3ca36492e33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_add [Algebra R S] [Algebra R F] [Algebra S F] [IsScalarTower R S F] [Algebra R K]
    [Algebra S K] [IsScalarTower R S K] (f : F →ₐ[S] K) {P Q : Fin 3 → F}
    (hP : (W'⁄F).Nonsingular P) (hQ : (W'⁄F).Nonsingular Q) :
    (W'⁄K).add (f ∘ P) (f ∘ Q) = f ∘ (W'⁄F).add P Q := by
  rw [← RingHom.coe_coe, ← WeierstrassCurve.Jacobian.map_add _ hP hQ, map_baseChange]

end Jacobian

/-- An abbreviation for `WeierstrassCurve.Jacobian.Point.fromAffine` for dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `700a6ef537038d95b67f7cadcf73581f590ee6a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Finsupp.toFreeAbelianGroup_comp_toFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "578aab823e486601438bc713fdf5d3ab67fd8099",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b824eff-528c-80f4-a9a1-a529cabf4806",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4766dd81-bee7-c6e1-8dec-637ac48f5223",
  "kind": "theorem",
  "lexical_name": "Finsupp.toFreeAbelianGroup_comp_toFinsupp",
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
  "slug": "finsupp-tofreeabeliangroup-comp-tofinsupp--2ebf75f2cfbc27ff5ecf0e84",
  "source": {
    "blob": "578aab823e486601438bc713fdf5d3ab67fd8099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ebf75f2cfbc27ff5ecf0e84955d48ff3576c54f7d43767442ad04cb0f353bb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4766dd81-bee7-c6e1-8dec-637ac48f5223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finsupp.toFreeAbelianGroup_comp_toFinsupp :
    toFreeAbelianGroup.comp toFinsupp = AddMonoidHom.id (FreeAbelianGroup X) := by
  ext
  rw [toFreeAbelianGroup, toFinsupp, AddMonoidHom.comp_apply, lift.of,
    liftAddHom_apply_single, AddMonoidHom.flip_apply, smulAddHom_apply, one_smul,
    AddMonoidHom.id_apply]
#align finsupp.to_free_abelian_group_comp_to_finsupp Finsupp.toFreeAbelianGroup_comp_toFinsupp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578aab823e486601438bc713fdf5d3ab67fd8099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

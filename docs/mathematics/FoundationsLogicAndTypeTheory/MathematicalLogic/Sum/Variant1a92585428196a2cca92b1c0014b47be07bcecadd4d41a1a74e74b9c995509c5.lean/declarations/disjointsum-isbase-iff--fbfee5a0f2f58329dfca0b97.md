# disjointSum_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e094ae55-6f5c-50e6-8215-4e41ee92c1f3",
  "kind": "lemma",
  "lexical_name": "disjointSum_isBase_iff",
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
  "slug": "disjointsum-isbase-iff--fbfee5a0f2f58329dfca0b97",
  "source": {
    "blob": "9c2f8c90275251f9b5bdbfa261aee2efef0d9c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbfee5a0f2f58329dfca0b977b4e75a7404a82906fc88c7851693b88e885d35c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e094ae55-6f5c-50e6-8215-4e41ee92c1f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma disjointSum_isBase_iff {h B} :
    (M.disjointSum N h).IsBase B ↔ M.IsBase (B ∩ M.E) ∧ N.IsBase (B ∩ N.E) ∧ B ⊆ M.E ∪ N.E := by
  simp [disjointSum, and_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c2f8c90275251f9b5bdbfa261aee2efef0d9c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

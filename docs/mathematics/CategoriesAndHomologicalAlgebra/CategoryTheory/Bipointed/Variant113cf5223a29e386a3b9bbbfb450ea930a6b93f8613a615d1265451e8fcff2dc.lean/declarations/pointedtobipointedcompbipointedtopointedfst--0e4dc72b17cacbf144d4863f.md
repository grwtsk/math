# pointedToBipointedCompBipointedToPointedFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a380f166fce03c60f34d275c13026c0cb3969402eeac52f69cb8357acd3defa3",
  "kind": "def",
  "lexical_name": "pointedToBipointedCompBipointedToPointedFst",
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
  "slug": "pointedtobipointedcompbipointedtopointedfst--0e4dc72b17cacbf144d4863f",
  "source": {
    "blob": "5ec0351ed2c1a46e233d83dfafd7f44224b6f642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant113cf5223a29e386a3b9bbbfb450ea930a6b93f8613a615d1265451e8fcff2dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e4dc72b17cacbf144d4863f865c6e8789a1a29189ad77cdab1fe93075df0863",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant113cf5223a29e386a3b9bbbfb450ea930a6b93f8613a615d1265451e8fcff2dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a380f166fce03c60f34d275c13026c0cb3969402eeac52f69cb8357acd3defa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointedToBipointedCompBipointedToPointedFst :
    pointedToBipointed ⋙ bipointedToPointedFst ≅ 𝟭 _ :=
  NatIso.ofComponents fun X =>
    { hom := ⟨id, rfl⟩
      inv := ⟨id, rfl⟩ }

/-- `BipointedToPointed_snd` is inverse to `PointedToBipointed`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant113cf5223a29e386a3b9bbbfb450ea930a6b93f8613a615d1265451e8fcff2dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant113cf5223a29e386a3b9bbbfb450ea930a6b93f8613a615d1265451e8fcff2dc.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec0351ed2c1a46e233d83dfafd7f44224b6f642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

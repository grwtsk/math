# toContinuousMapHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:984c855e2a90b15a0b627d5ec64361ed8f48a8129e151f043e4dde23a7227b0f",
  "kind": "def",
  "lexical_name": "toContinuousMapHom",
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
  "slug": "tocontinuousmaphom--fa193933d6af28666eceff57",
  "source": {
    "blob": "dba3ff124acba0d76d7c945eba80379fb8982fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa193933d6af28666eceff57306ea3126834fd4ab4e176435c6526a58bc26730",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:984c855e2a90b15a0b627d5ec64361ed8f48a8129e151f043e4dde23a7227b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toContinuousMapHom [StarRing R] [ContinuousStar R] : C(X, R)₀ →⋆ₙₐ[R] C(X, R) where
  toFun f := f
  map_smul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
  map_mul' _ _ := rfl
  map_star' _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba3ff124acba0d76d7c945eba80379fb8982fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# MulDistribMulAction.toMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99b7b4df85c3d4bd551c102af34bbdf2d8caed122e6fbac1e9202a77e6b85075",
  "kind": "def",
  "lexical_name": "MulDistribMulAction.toMonoidHom",
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
  "slug": "muldistribmulaction-tomonoidhom--4a3069795f890f7bdd2d0a8e",
  "source": {
    "blob": "8c8202afaf07ed281bc5fdc5ab7546062ffb45eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 185,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a3069795f890f7bdd2d0a8ee2f04c102fcc0d0aad7250f5ac16ded6781b57f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99b7b4df85c3d4bd551c102af34bbdf2d8caed122e6fbac1e9202a77e6b85075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def MulDistribMulAction.toMonoidHom (r : M) : A →* A where
  toFun := (r • ·)
  map_one' := smul_one r
  map_mul' := smul_mul' r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8202afaf07ed281bc5fdc5ab7546062ffb45eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

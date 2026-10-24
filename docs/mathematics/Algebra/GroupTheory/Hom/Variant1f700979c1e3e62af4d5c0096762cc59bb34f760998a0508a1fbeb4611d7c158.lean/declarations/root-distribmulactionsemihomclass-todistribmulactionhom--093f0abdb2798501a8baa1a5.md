# _root_.DistribMulActionSemiHomClass.toDistribMulActionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0305042dbad5f6b8d7017da5fbca875998ee65ad8b64ed67023532bbf1ace96",
  "kind": "def",
  "lexical_name": "_root_.DistribMulActionSemiHomClass.toDistribMulActionHom",
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
  "slug": "root-distribmulactionsemihomclass-todistribmulactionhom--093f0abdb2798501a8baa1a5",
  "source": {
    "blob": "d8a23f0e182d2f8ee5127758ea351c75308fc164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 621,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:093f0abdb2798501a8baa1a57c8e9c0060ad6322f47b8b6db04c4e1481643fd3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0305042dbad5f6b8d7017da5fbca875998ee65ad8b64ed67023532bbf1ace96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.DistribMulActionSemiHomClass.toDistribMulActionHom
    [DistribMulActionSemiHomClass F φ A B]
    (f : F) : A →ₑ+[φ] B :=
  { (f : A →+ B), (f : A →ₑ[φ] B) with }

/-- Any type satisfying `MulActionHomClass` can be cast into `MulActionHom`
via `MulActionHomClass.toMulActionHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a23f0e182d2f8ee5127758ea351c75308fc164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

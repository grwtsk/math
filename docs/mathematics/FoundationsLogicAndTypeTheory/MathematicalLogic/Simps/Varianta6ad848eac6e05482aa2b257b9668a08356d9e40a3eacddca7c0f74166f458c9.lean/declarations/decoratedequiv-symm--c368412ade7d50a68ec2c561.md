# DecoratedEquiv.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43e0609a78ff9863aca8366398477b85cbfeacfa70680f3afb9966f071e2ca60",
  "kind": "def",
  "lexical_name": "DecoratedEquiv.symm",
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
  "slug": "decoratedequiv-symm--c368412ade7d50a68ec2c561",
  "source": {
    "blob": "19d240d1d2073c9361940147806e652d899668f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1019,
    "line": 1015,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c368412ade7d50a68ec2c5612c158022d7d770148804f66a0bf6824c1b461a63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43e0609a78ff9863aca8366398477b85cbfeacfa70680f3afb9966f071e2ca60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1015–1019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DecoratedEquiv.symm {α β : Sort _} (e : DecoratedEquiv α β) : DecoratedEquiv β α :=
  { toEquiv' := e.toEquiv'.symm
    P_toFun := e.P_invFun
    P_invFun := e.P_toFun }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean#L1015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19d240d1d2073c9361940147806e652d899668f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

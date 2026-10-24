# selmerSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2085ae14e099edf464a5a42d8c021d2d376f3445f09c3db93d0ff6d30665183e",
  "kind": "def",
  "lexical_name": "selmerSubgroup",
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
  "slug": "selmersubgroup--e47a2e346e989cb174174d06",
  "source": {
    "blob": "052c9569ce763491180df62998d5d01018a015cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e47a2e346e989cb174174d067327c97be8f2fa284e3e2497d49855898a8f7437",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2085ae14e099edf464a5a42d8c021d2d376f3445f09c3db93d0ff6d30665183e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selmerSubgroup
    (P : FiniteSelmerProblem.{u, v, w}) :
    FiniteSubgroup (FiniteH1.additiveStructure P.G P.A P.ρG) :=
  FiniteSelmerGroup
    (G := P.G)
    (A := P.A)
    (ρG := P.ρG)
    P.V P.Gv P.ρv P.ιv P.localCondition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052c9569ce763491180df62998d5d01018a015cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

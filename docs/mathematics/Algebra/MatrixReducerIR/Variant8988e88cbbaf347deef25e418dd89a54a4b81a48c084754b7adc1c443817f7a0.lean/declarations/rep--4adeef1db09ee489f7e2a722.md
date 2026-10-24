# Rep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9bcdca976fd822fccf1d07cd6c1a157f09ebcd789e0ab42438cbfcc95dff2b2",
  "kind": "inductive",
  "lexical_name": "Rep",
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
  "slug": "rep--4adeef1db09ee489f7e2a722",
  "source": {
    "blob": "c6ffdcdb1e90e534aa05f2aef9a00c139383234b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4adeef1db09ee489f7e2a722ec4caa59d7cdeab8f6a0f8db70aa6d1e8dda3e41",
  "verification": {
    "reference": "docs/verification/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9bcdca976fd822fccf1d07cd6c1a157f09ebcd789e0ab42438cbfcc95dff2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Rep : Type 1
  | natural
  | boolean
  | bits (width : Nat)
  | matrix (rows cols : Nat)
  | packet (width : Nat)
  | variableMatrix (width : Nat)
  | field (F : Type)
  | vector (length : Nat) (element : Rep)
  | pair (left right : Rep)

/-- Embed a domain-independent runtime representation into the matrix IR. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ffdcdb1e90e534aa05f2aef9a00c139383234b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

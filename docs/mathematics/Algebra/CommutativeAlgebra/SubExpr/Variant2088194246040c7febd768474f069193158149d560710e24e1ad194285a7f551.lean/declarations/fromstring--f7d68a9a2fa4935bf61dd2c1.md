# fromString!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df47abd026e0cd44799fcbbb6cdf2b3ba9e9b1bc4ca63707f972d0d6cc8587c",
  "kind": "def",
  "lexical_name": "fromString!",
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
  "slug": "fromstring--f7d68a9a2fa4935bf61dd2c1",
  "source": {
    "blob": "b6a60009551fea2b0c733d00a6b4ea30e0552d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant2088194246040c7febd768474f069193158149d560710e24e1ad194285a7f551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7d68a9a2fa4935bf61dd2c1d030d289fdd773715d1e2bcd462b0075cc28094d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SubExpr/Variant2088194246040c7febd768474f069193158149d560710e24e1ad194285a7f551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df47abd026e0cd44799fcbbb6cdf2b3ba9e9b1bc4ca63707f972d0d6cc8587c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def fromString! (s : String) : Pos :=
  match Pos.fromString? s with
  | .ok a => a
  | .error e => panic! e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SubExpr/Variant2088194246040c7febd768474f069193158149d560710e24e1ad194285a7f551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant2088194246040c7febd768474f069193158149d560710e24e1ad194285a7f551.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a60009551fea2b0c733d00a6b4ea30e0552d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

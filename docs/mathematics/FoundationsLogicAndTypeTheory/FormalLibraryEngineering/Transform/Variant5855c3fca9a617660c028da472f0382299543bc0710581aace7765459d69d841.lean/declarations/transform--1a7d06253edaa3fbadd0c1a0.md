# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6c204e7d54bcc4d82cecf5857e50290540d59e24ce12e203dc108754c32486a",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--1a7d06253edaa3fbadd0c1a0",
  "source": {
    "blob": "e50c746d3704023bfbd43a7a027eb238c7fa5446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a7d06253edaa3fbadd0c1a0f427281daf67cb28e6bd38115e7052fb5b4f250f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6c204e7d54bcc4d82cecf5857e50290540d59e24ce12e203dc108754c32486a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transform {m} [Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m]
    (input : Expr)
    (pre   : Expr → m TransformStep := fun _ => return .continue)
    (post  : Expr → m TransformStep := fun e => return .done e)
    (usedLetOnly := false)
    (skipConstInApp := false)
    : m Expr := do
  let (e, _) ← transformWithCache input {} pre post usedLetOnly skipConstInApp
  return e

/--
Zeta-reduces `let`/`have` expressions in `e`, and also zeta-delta reduces let-bound variables.
Removes unused `let`/`have` expressions.

Options:
- If `zetaDelta` is true (default: true), then zeta-delta reduces (unfolds) let-bound variables.
- If `zetaHave` is false (default: true), then does not zeta reduce `have` expressions.
- If `beta` is true (default: true), then beta reduce applications of substituted values
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50c746d3704023bfbd43a7a027eb238c7fa5446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

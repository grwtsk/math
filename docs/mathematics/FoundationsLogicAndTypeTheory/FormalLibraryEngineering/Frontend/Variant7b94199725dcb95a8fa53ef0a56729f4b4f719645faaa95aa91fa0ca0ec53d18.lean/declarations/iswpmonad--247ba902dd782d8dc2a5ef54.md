# isWPMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16ae241c2466a91615d967b8f17b6b124780cd41ec63b5929e9230c524df0303",
  "kind": "def",
  "lexical_name": "isWPMonad",
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
  "slug": "iswpmonad--247ba902dd782d8dc2a5ef54",
  "source": {
    "blob": "50d694f071c8cecb8605609eb094a9ad12520edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:247ba902dd782d8dc2a5ef54b4e0166d7ebd97cd97dc4721749cf0467af59ef4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16ae241c2466a91615d967b8f17b6b124780cd41ec63b5929e9230c524df0303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isWPMonad (m : Expr) : MetaM Bool := withDefault do
  try
    let wpm ← mkConstWithFreshMVarLevels ``Std.Internal.Do.WPMonad
    let (args, _, _) ← forallMetaTelescopeReducing (← inferType wpm)
    unless ← isDefEq args[0]! m do return false
    return (← synthInstance? (mkAppN wpm args)).isSome
  catch _ => return false

/-- Infer the program type of a `vcgen` goal, the key for frame-procedure selection and the expected
type for elaborating `frames`/`until` patterns. Peels leading binders, then reads the program type
from a bare `wp …` target, a `pre ⊑ wp …` entailment, or a `Triple`. When the program type is `m α`
with `m` a `WPMonad`, the monad `m` is returned (frameprocs are keyed by monad); otherwise the whole
program type is returned, so deep embeddings key on their own head. Returns `none` when the goal
exposes no program. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d694f071c8cecb8605609eb094a9ad12520edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

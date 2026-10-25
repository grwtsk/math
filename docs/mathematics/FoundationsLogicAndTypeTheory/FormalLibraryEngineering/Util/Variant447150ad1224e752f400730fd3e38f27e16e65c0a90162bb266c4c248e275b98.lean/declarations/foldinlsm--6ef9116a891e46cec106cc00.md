# foldInlsM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22fd3f5396d58ed7d2d068c23678b93b73f82b5d82b5037471074ee03175be6a",
  "kind": "def",
  "lexical_name": "foldInlsM",
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
  "slug": "foldinlsm--6ef9116a891e46cec106cc00",
  "source": {
    "blob": "bc4662740898c08f5c07ed7b4a450162a0cd897a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant447150ad1224e752f400730fd3e38f27e16e65c0a90162bb266c4c248e275b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ef9116a891e46cec106cc00e923123ceb29c6ef902ac568f004d4f3df95725e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant447150ad1224e752f400730fd3e38f27e16e65c0a90162bb266c4c248e275b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22fd3f5396d58ed7d2d068c23678b93b73f82b5d82b5037471074ee03175be6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldInlsM {m} [Monad m] (arr : Array (α ⊕ β)) (f : Array α → m β) : m (Array β) := do
  let mut ret : Array β := #[]
  let mut pending_inls : Array α := #[]
  for c in arr do
    match c with
    | .inl ci =>
      pending_inls := pending_inls.push ci
    | .inr cis =>
      if pending_inls.size ≠ 0 then
        ret := ret.push <| ← f pending_inls
      pending_inls := #[]
      ret := ret.push cis
  if pending_inls.size ≠ 0 then
    ret := ret.push <| ← f pending_inls
  return ret

end ProofWidgets.Util

namespace Lean.PrettyPrinter.Delaborator
open Delaborator.SubExpr

/-- Delaborate the elements of a list literal separately, calling `elem` on each. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant447150ad1224e752f400730fd3e38f27e16e65c0a90162bb266c4c248e275b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant447150ad1224e752f400730fd3e38f27e16e65c0a90162bb266c4c248e275b98.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc4662740898c08f5c07ed7b4a450162a0cd897a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

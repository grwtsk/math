# foldInlsM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e26a71bb60bc745d5c173d2f774255513adecbc49818124748b09c1b41cee74b",
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
  "slug": "foldinlsm--61f3d8484ddefc0b4931c3af",
  "source": {
    "blob": "5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f3d8484ddefc0b4931c3af1c0eb204cc7fb301bc7f56962598a361f9c935f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e26a71bb60bc745d5c173d2f774255513adecbc49818124748b09c1b41cee74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–53.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

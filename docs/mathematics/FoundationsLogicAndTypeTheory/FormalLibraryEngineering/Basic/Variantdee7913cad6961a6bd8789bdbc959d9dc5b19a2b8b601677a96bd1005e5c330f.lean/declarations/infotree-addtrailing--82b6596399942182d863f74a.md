# InfoTree.addTrailing?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ab6591c6bc8346d322b391b6f9adf9e6f9aa4a68648b46aff77aa2c0bac337c",
  "kind": "def",
  "lexical_name": "InfoTree.addTrailing?",
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
  "slug": "infotree-addtrailing--82b6596399942182d863f74a",
  "source": {
    "blob": "c06cec4f426ff14663eebc4801ebc298acaa4e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82b6596399942182d863f74a699703bf0de16ba3f24d8363404baeb5ecd776f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ab6591c6bc8346d322b391b6f9adf9e6f9aa4a68648b46aff77aa2c0bac337c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def InfoTree.addTrailing? (trailing : Substring.Raw) : Elab.InfoTree → Option Elab.InfoTree
  | .context i t => t.addTrailing? trailing |>.map (.context i)
  | .node info children => Id.run do
    let stx? := info.stx.addTrailing? trailing
    -- NOTE: we need to visit the children even if `stx` was not actually changed as info trees are
    -- not necessarily properly nested regarding syntax ranges!
    let childTrailing := (stx?.getD info.stx).getTrailing?.getD trailing
    let mut changed := false
    let mut newChildren := children
    for c in children, i in 0...* do
      if let some c' := c.addTrailing? childTrailing then
        changed := true
        newChildren := newChildren.set i c'
    if stx?.isNone && !changed then
      return none
    let info := match stx? with
      | some stx => info.setStx stx
      | none     => info
    return some (.node info newChildren)
  | .hole _ => none

/-- Adds the given trailing substring to all adjacent syntax in the info tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c06cec4f426ff14663eebc4801ebc298acaa4e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

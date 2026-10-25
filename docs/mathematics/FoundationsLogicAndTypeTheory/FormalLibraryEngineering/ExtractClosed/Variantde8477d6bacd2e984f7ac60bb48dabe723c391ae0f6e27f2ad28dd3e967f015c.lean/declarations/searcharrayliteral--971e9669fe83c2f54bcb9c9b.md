# searchArrayLiteral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc418aebb935cea7b01c84ca23059d9e0ae4bc6f94e78f513dff210f4fe4d8be",
  "kind": "def",
  "lexical_name": "searchArrayLiteral",
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
  "slug": "searcharrayliteral--971e9669fe83c2f54bcb9c9b",
  "source": {
    "blob": "b9ec0a623f726f43f411ec78b8698507a8ef4bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:971e9669fe83c2f54bcb9c9b7b3d7a90a9fb6cec3e7ba17385a0a81b1f8bc1a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc418aebb935cea7b01c84ca23059d9e0ae4bc6f94e78f513dff210f4fe4d8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def searchArrayLiteral (decl : LetDecl .pure) (k : Code .pure) :
    M (Option (LetDecl .pure × Code .pure)) := do
  let .const ``Array.push  _ #[_, .fvar parentId, _] := decl.value | return none
  let some parentDecl ← findLetDecl? (pu := .pure) parentId | return none
  match parentDecl.value with
  | .const ``Array.mkEmpty _ #[_, .fvar sizeFVar]
  | .const ``Array.emptyWithCapacity _ #[_, .fvar sizeFVar] =>
    let some (.lit (.nat size)) ← findLetValue? (pu := .pure) sizeFVar | return none
    identifyChain parentDecl.fvarId decl k {} size
  | _ => return none
where
  identifyChain (prevArrayId : FVarId) (decl : LetDecl .pure) (k : Code .pure)
      (illegalSet : FVarIdSet) (size : Nat) : M (Option (LetDecl .pure × Code .pure)) := do
    match size with
    | 0 => return none
    | nextSize + 1 =>
      let .const ``Array.push _ #[_, .fvar arrId, elemArg] := decl.value | return none
      if arrId != prevArrayId then return none
      if !(← shouldExtractArg elemArg) then return none
      if nextSize != 0 then
        let illegalSet := illegalSet.insert decl.fvarId
        let .let nextDecl nextK := k | return none
        identifyChain decl.fvarId nextDecl nextK illegalSet nextSize
      else
        let occursCheck (decl : LetDecl .pure) (k : Code .pure) (illegalSet : FVarIdSet) := do
          if k.dependsOn illegalSet then return none
          return some (decl, k)
        -- At this point we can be at the end of an `Array` literal or right before the end of a
        -- `ByteArray` or `FloatArray` literal, let's check.
        match k with
        | .let nextDecl@{ value := .const ``ByteArray.mk _ #[.fvar arrayId] _, .. } nextK
        | .let nextDecl@{ value := .const ``FloatArray.mk _ #[.fvar arrayId] _, .. } nextK =>
          if arrayId != decl.fvarId then
            occursCheck decl k illegalSet
          else
            let illegalSet := illegalSet.insert decl.fvarId
            occursCheck nextDecl nextK illegalSet
        | _ => occursCheck decl k illegalSet

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ec0a623f726f43f411ec78b8698507a8ef4bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

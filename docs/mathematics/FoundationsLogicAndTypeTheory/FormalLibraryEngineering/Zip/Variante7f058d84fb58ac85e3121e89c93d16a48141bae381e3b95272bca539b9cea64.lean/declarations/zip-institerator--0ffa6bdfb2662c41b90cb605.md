# Zip.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58da3fc6ab19837afbc5a610275a2bae66efa4e83b39426301476e37cf00ae4c",
  "kind": "instance",
  "lexical_name": "Zip.instIterator",
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
  "slug": "zip-institerator--0ffa6bdfb2662c41b90cb605",
  "source": {
    "blob": "59f0ae0391f6cec515d9977763df438b8fd17098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ffa6bdfb2662c41b90cb60541311383900bcfcb420639d33d3cfba654ad5914",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58da3fc6ab19837afbc5a610275a2bae66efa4e83b39426301476e37cf00ae4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Zip.instIterator [Monad m] :
    Iterator (Zip α₁ m α₂ β₂) m (β₁ × β₂) where
  IsPlausibleStep := PlausibleStep
  step it :=
    match hm : it.internalState.memoizedLeft with
    | none => do
      match (← it.internalState.left.step).inflate with
      | .yield it₁' out hp =>
          pure <| .deflate <| .skip ⟨⟨it₁', (some ⟨out, _, _, hp⟩), it.internalState.right⟩⟩ (.yieldLeft hm hp)
      | .skip it₁' hp =>
          pure <| .deflate <| .skip ⟨⟨it₁', none, it.internalState.right⟩⟩ (.skipLeft hm hp)
      | .done hp =>
          pure <| .deflate <| .done (.doneLeft hm hp)
    | some out₁ => do
      match (← it.internalState.right.step).inflate with
      | .yield it₂' out₂ hp =>
          pure <| .deflate <| .yield ⟨⟨it.internalState.left, none, it₂'⟩⟩ (out₁, out₂) (.yieldRight hm hp)
      | .skip it₂' hp =>
          pure <| .deflate <| .skip ⟨⟨it.internalState.left, (some out₁), it₂'⟩⟩ (.skipRight hm hp)
      | .done hp =>
          pure <| .deflate <| .done (.doneRight hm hp)

variable (m) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f0ae0391f6cec515d9977763df438b8fd17098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

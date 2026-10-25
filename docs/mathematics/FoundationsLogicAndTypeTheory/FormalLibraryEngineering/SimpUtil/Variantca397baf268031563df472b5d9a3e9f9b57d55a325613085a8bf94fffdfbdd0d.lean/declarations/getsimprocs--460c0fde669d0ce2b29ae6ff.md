# getSimprocs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:058abf68d0fe2b8bcd6331c0ee38ca491868a5ac31fa5cb32829c7315cefbb5f",
  "kind": "def",
  "lexical_name": "getSimprocs",
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
  "slug": "getsimprocs--460c0fde669d0ce2b29ae6ff",
  "source": {
    "blob": "8272c5609c353d84af20dc344d78edb6b24cb36b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:460c0fde669d0ce2b29ae6ffce6208821c699b5530bc7605575ef35140ee90d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:058abf68d0fe2b8bcd6331c0ee38ca491868a5ac31fa5cb32829c7315cefbb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected def getSimprocs : MetaM (Array Simprocs) := do
  let s ← Simp.getSEvalSimprocs
  /-
  We don't want to apply `List.reduceReplicate` as a normalization operation in
  `grind`. Consider the following example:
  ```
  example (ys : List α) : n = 0 → List.replicate n ys = [] := by
    grind only [List.replicate]
  ```
  The E-matching module generates the following instance for `List.replicate.eq_1`
  ```
  List.replicate 0 [] = []
  ```
  We don't want it to be simplified to `[] = []`.
  -/
  let s := s.erase ``List.reduceReplicate
  let s := s.erase ``reduceCtorEq
  let s ← s.add ``reduceCtorEqCheap (post := true)
  let s ← addSimpMatchDiscrsOnly s
  let s ← addPreMatchCondSimproc s
  let s ← Arith.addSimproc s
  let s ← addForallSimproc s
  let s ← s.add ``simpEq (post := true)
  let s ← s.add ``simpOr (post := true)
  let s ← s.add ``simpDIte (post := true)
  let s ← s.add ``pushNot (post := false)
  let s ← s.add ``unfoldReducibleSimproc (post := false)
  return #[s]

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8272c5609c353d84af20dc344d78edb6b24cb36b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

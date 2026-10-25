# filterPairsM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:258277a3f88d7ecdb6a7aea5501faf95ae59c5ec57876294022ac772e3d8c7d1",
  "kind": "def",
  "lexical_name": "filterPairsM",
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
  "slug": "filterpairsm--908b56fa7a76fbfd31eb8e33",
  "source": {
    "blob": "1582ef604de094989a115e025d427d36f2de502a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant2cbde8c64c111830e32dcd1bc162f3fd97b8bbf1e512cb4c6dff6dc117240cc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:908b56fa7a76fbfd31eb8e338ec5402ff1059dcaaa28a5e550e1c89e76602c93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant2cbde8c64c111830e32dcd1bc162f3fd97b8bbf1e512cb4c6dff6dc117240cc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:258277a3f88d7ecdb6a7aea5501faf95ae59c5ec57876294022ac772e3d8c7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def filterPairsM {m} [Monad m] {α} (a : Array α) (f : α → α → m (Bool × Bool)) :
    m (Array α) := do
  let mut removed := Array.replicate a.size false
  let mut numRemoved := 0
  for h1 : i in *...a.size do for h2 : j in (i+1)...a.size do
    unless removed[i]! || removed[j]! do
      let xi := a[i]
      let xj := a[j]
      let (keepi, keepj) ← f xi xj
      unless keepi do
        numRemoved := numRemoved + 1
        removed := removed.set! i true
      unless keepj do
        numRemoved := numRemoved + 1
        removed := removed.set! j true
  let mut a' := Array.mkEmpty numRemoved
  for h : i in *...a.size do
    unless removed[i]! do
      a' := a'.push a[i]
  return a'

/--
`maskArray mask xs` keeps those `x` where the corresponding entry in `mask` is `true`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant2cbde8c64c111830e32dcd1bc162f3fd97b8bbf1e512cb4c6dff6dc117240cc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant2cbde8c64c111830e32dcd1bc162f3fd97b8bbf1e512cb4c6dff6dc117240cc4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1582ef604de094989a115e025d427d36f2de502a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

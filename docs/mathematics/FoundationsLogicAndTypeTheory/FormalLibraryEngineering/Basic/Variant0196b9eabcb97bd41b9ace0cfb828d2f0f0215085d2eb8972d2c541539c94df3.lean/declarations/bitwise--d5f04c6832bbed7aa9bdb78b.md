# bitwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2732f94f0867ebaf0df3c267b95320483841614f368f8d514a32d910503030b7",
  "kind": "def",
  "lexical_name": "bitwise",
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
  "slug": "bitwise--d5f04c6832bbed7aa9bdb78b",
  "source": {
    "blob": "1e2adf9e812a8aa3e890ae9f7ee08de0388e9f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f04c6832bbed7aa9bdb78bad4ff43c7fa1231687b5202571276f603a462c6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2732f94f0867ebaf0df3c267b95320483841614f368f8d514a32d910503030b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitwise (f : Bool → Bool → Bool) (n m : Nat) : Nat :=
  if n = 0 then
    if f false true then m else 0
  else if m = 0 then
    if f true false then n else 0
  else
    let n' := n / 2
    let m' := m / 2
    let b₁ := n % 2 = 1
    let b₂ := m % 2 = 1
    let r  := bitwise f n' m'
    if f b₁ b₂ then
      r+r+1
    else
      r+r
decreasing_by apply bitwise_rec_lemma; assumption

/--
Bitwise and. Usually accessed via the `&&&` operator.

Each bit of the resulting value is set if the corresponding bit is set in both of the inputs.
-/
@[extern "lean_nat_land"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e2adf9e812a8aa3e890ae9f7ee08de0388e9f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

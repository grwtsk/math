# elabRemainingInvariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9811d1e322c4e66488c7f43324b1081d8728c13244352a0083b3839e38536022",
  "kind": "def",
  "lexical_name": "elabRemainingInvariants",
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
  "slug": "elabremaininginvariants--bf6d054c74aad9c12f4a6f6c",
  "source": {
    "blob": "50d694f071c8cecb8605609eb094a9ad12520edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf6d054c74aad9c12f4a6f6c3d00b121f366d8f67fe7c9acf4ad58a79f0fb032",
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

Occurrence: `declaration:9811d1e322c4e66488c7f43324b1081d8728c13244352a0083b3839e38536022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabRemainingInvariants (alts : Std.HashMap Nat Syntax)
    (invariants : Array MVarId) (inlineHandled : Std.HashSet Nat) : SymM Unit := do
  let mut handled := inlineHandled
  for h : i in 0...invariants.size do
    let n := i + 1
    if handled.contains n then continue
    let some alt := alts[n]? | continue
    handled := handled.insert n
    discard <| VCGen.elabInvariant alts n invariants[i]
  -- Warn on user-provided alts that matched no invariant goal (neither inline nor post-hoc).
  for (n, alt) in alts.toArray do
    unless handled.contains n do
      logWarningAt alt s!"Invariant alternative `inv{n}` does not match any invariant goal."

/-- Parsed `vcgen` arguments shared by the two entry points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d694f071c8cecb8605609eb094a9ad12520edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

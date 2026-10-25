# Mon.div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1df95844b532fdd0cb03c1b389c69656d7bf13a4d99c2ddf3af64b150ef64a97",
  "kind": "def",
  "lexical_name": "Mon.div",
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
  "slug": "mon-div--cda69c422ff2ccbbd56a1dd5",
  "source": {
    "blob": "a3a2e88c142e6bac44a373297da91b7792e4573c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cda69c422ff2ccbbd56a1dd5f1643a4b70c4bc1a3bec47796b0747cc1f5c2768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1df95844b532fdd0cb03c1b389c69656d7bf13a4d99c2ddf3af64b150ef64a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def Mon.div : Mon → Mon → Mon
  | m₁, .unit => m₁
  | .unit, _  => .unit -- reachable only if pre-condition does not hold
  | .mult pw₁ m₁, .mult pw₂ m₂ =>
    match compare pw₁.x pw₂.x with
    | .eq =>
      let k := pw₁.k - pw₂.k
      if k == 0 then
        div m₁ m₂
      else
        .mult { x := pw₁.x, k } (div m₁ m₂)
    | .lt => .mult pw₁ (div m₁ (.mult pw₂ m₂))
    | .gt => .unit -- reachable only if pre-condition does not hold

/--
`coprime m₁ m₂` returns `true` if the given monomials
do not have any variable in common.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a2e88c142e6bac44a373297da91b7792e4573c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

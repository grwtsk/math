# WhiskerRight.nodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19f5021e168ee236875987778e0199b93648e730e2a5660b3a8c11827d5a9fce",
  "kind": "def",
  "lexical_name": "WhiskerRight.nodes",
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
  "slug": "whiskerright-nodes--76fa77d0fe55bc5aa9f1ae5f",
  "source": {
    "blob": "e80cbab1f050a569cdd190954ad886813596d826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76fa77d0fe55bc5aa9f1ae5fadc44fff5f3764b26f83a4347bfc28bd0c859156",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19f5021e168ee236875987778e0199b93648e730e2a5660b3a8c11827d5a9fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WhiskerRight.nodes (v h₁ h₂ : ℕ) : WhiskerRight → List Node
  | WhiskerRight.of η => [.atom ⟨v, h₁, h₂, η⟩]
  | WhiskerRight.whisker _ η f =>
    let ηs := η.nodes v h₁ h₂
    let k₁ := (ηs.map (fun n ↦ n.srcList)).flatten.length
    let k₂ := (ηs.map (fun n ↦ n.tarList)).flatten.length
    let s : Node := .id ⟨v, h₁ + k₁, h₂ + k₂, f⟩
    ηs ++ [s]

/-- The list of nodes associated with a 2-morphism. The position is counted from the
specified natural numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cbab1f050a569cdd190954ad886813596d826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# weightCodePairs_lengths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a0558e6-9075-0ddf-5a9c-019a604e4e17",
  "kind": "theorem",
  "lexical_name": "weightCodePairs_lengths",
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
  "slug": "weightcodepairs-lengths--bff29ec254962efbb1e9423c",
  "source": {
    "blob": "7f9d211c537919baa83f6ecefd0aa4431b354e78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/InformationTheory/Huffman/SourceBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bff29ec254962efbb1e9423cb26ffad0d4656d83cd47d356d1f5336677a58ecf",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a0558e6-9075-0ddf-5a9c-019a604e4e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightCodePairs_lengths (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) :
    ∀ pair ∈ weightCodePairs weights tree, pair.2 ≤ maxCodeBits := by
  intro pair hp
  have he : weightCodePairs weights tree =
      alphabet.map (fun a => (weights a, codeLength tree a)) := by
    simp only [weightCodePairs, List.zip_map']
  rw [he] at hp
  obtain ⟨a, _, rfl⟩ := List.mem_map.mp hp
  exact codeLength_le weights tree built a

/-- Every checked increment in `encode` succeeds on an inventory-admitted
source, and its result is the exact 256-cell histogram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/SourceBounds.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9d211c537919baa83f6ecefd0aa4431b354e78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

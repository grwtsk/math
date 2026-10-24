# checkedCountLoop_result_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b68f90ea-5369-a74e-e521-95cb3a1b6be6",
  "kind": "theorem",
  "lexical_name": "checkedCountLoop_result_bound",
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
  "slug": "checkedcountloop-result-bound--ea6e56d014ab4cdb52e69f18",
  "source": {
    "blob": "a49b05f6ae675f709fac087ee6a5d6609cfe1ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6e56d014ab4cdb52e69f185b941770cc13b04a38d3cf5fb7d53c23d98a170d",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b68f90ea-5369-a74e-e521-95cb3a1b6be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkedCountLoop_result_bound (source : List UInt8) (weights result : UInt8 → Nat)
    (initial : ∀ a, weights a ≤ CheckedArithmetic.maxU64)
    (success : checkedCountLoop source weights = some result) :
    ∀ a, result a ≤ CheckedArithmetic.maxU64 := by
  induction source generalizing weights with
  | nil =>
    have h : weights = result := by simpa [checkedCountLoop] using success
    simpa [← h] using initial
  | cons byte source ih =>
    by_cases step : weights byte + 1 ≤ CheckedArithmetic.maxU64
    · simp only [checkedCountLoop, checkedIncrement, if_pos step] at success
      apply ih (increment weights byte) ?_ success
      intro a
      by_cases h : a = byte
      · subst a; simpa [increment] using step
      · simpa [increment, h] using initial a
    · simp [checkedCountLoop, checkedIncrement, step] at success

/-- Exact success condition of the zero-initialized Rust histogram loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a49b05f6ae675f709fac087ee6a5d6609cfe1ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

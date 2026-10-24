# union_pattern_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7083588f-0b88-9909-2412-d78c9a3e79f7",
  "kind": "theorem",
  "lexical_name": "union_pattern_eq_iff",
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
  "slug": "union-pattern-eq-iff--71272d6a79d762747a067784",
  "source": {
    "blob": "c61b4320e03fcf04e5991dc0a969fa348f57d364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71272d6a79d762747a067784dfaf70f9471593f2ad309e7ebcec9637abf04b87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7083588f-0b88-9909-2412-d78c9a3e79f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_pattern_eq_iff (S T : Finset ℕ) (m n : ℕ) :
    divisorPattern (S ∪ T) m = divisorPattern (S ∪ T) n ↔
      divisorPattern S m = divisorPattern S n ∧ divisorPattern T m = divisorPattern T n := by
  constructor
  · intro h
    constructor
    · have hr := congrArg (restrictPattern S) h
      simpa only [divisorPattern_restrict Finset.subset_union_left] using hr
    · have hr := congrArg (restrictPattern T) h
      simpa only [divisorPattern_restrict Finset.subset_union_right] using hr
  · rintro ⟨hS, hT⟩
    simp only [divisorPattern_union, hS, hT]

/-- Divisor disclosure union is meet in the full equivalence lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61b4320e03fcf04e5991dc0a969fa348f57d364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ordinary_eq_cyclic_off_collar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7dec485-88f2-a017-50b5-21371ccaab5a",
  "kind": "theorem",
  "lexical_name": "ordinary_eq_cyclic_off_collar",
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
  "slug": "ordinary-eq-cyclic-off-collar--eaf9b59c72d3d5bfffd181c2",
  "source": {
    "blob": "4e91de8ff32abb730324269fe9a7b23cff6a783d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf9b59c72d3d5bfffd181c2d67652f5fd7038690df5af937e91073d031c4b10",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7dec485-88f2-a017-50b5-21371ccaab5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinary_eq_cyclic_off_collar
    (N : ℕ) (offsets : Finset ℕ) (z : ℕ → Bool)
    (hr : cyclicMaxOffset offsets < N)
    (n : ℕ) (hn : n ∈ Finset.range N)
    (hgood : n ∉ cyclicWrapCollar N offsets) :
    ordinaryShiftWord offsets z n = cyclicShiftWord N offsets z n := by
  have hnN : n < N := Finset.mem_range.mp hn
  have hfirst : n < N - cyclicMaxOffset offsets := by
    by_contra hnot
    apply hgood
    change n ∈ Finset.Ico (N - cyclicMaxOffset offsets) N
    exact Finset.mem_Ico.mpr ⟨by omega, hnN⟩
  funext h
  have hh : h.val ≤ cyclicMaxOffset offsets :=
    offset_le_cyclicMaxOffset offsets h.val h.property
  have hnowrap : n + h.val < N := by omega
  change z (n + h.val) = z ((n + h.val) % N)
  rw [Nat.mod_eq_of_lt hnowrap]

/-- Empty shifts produce an empty exceptional collar. In particular,
the zero-coordinate Boolean word has no wrap defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e91de8ff32abb730324269fe9a7b23cff6a783d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

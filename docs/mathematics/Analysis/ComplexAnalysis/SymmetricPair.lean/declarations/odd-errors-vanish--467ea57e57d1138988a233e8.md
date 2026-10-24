# odd_errors_vanish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2161ef99-599e-70ba-ca7a-f39b7b2e758b",
  "kind": "theorem",
  "lexical_name": "odd_errors_vanish",
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
  "slug": "odd-errors-vanish--467ea57e57d1138988a233e8",
  "source": {
    "blob": "1061f257eb2233992c7d2bc887372ea68e1995ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 186,
    "path": "GRWTSK/Analysis/Complex/SymmetricPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:467ea57e57d1138988a233e872c0b009f23a3d2e6adf6f3f402f872d1572669b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2161ef99-599e-70ba-ca7a-f39b7b2e758b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_errors_vanish {F : ℂ → ℂ} {P : ℕ → ℂ → ℂ} {U : Set ℂ} {e : ℕ → ℝ}
    (hU : Convex ℝ U) (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ n z, z ∈ U → DifferentiableAt ℂ (P n) z)
    (herr : ∀ n z, z ∈ U → ‖deriv F z-deriv (P n) z‖ ≤ e n)
    (hvanish : ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n, N ≤ n → e n < ε) :
    ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n, N ≤ n →
      ∀ c d : ℂ, d ≠ 0 → c+d ∈ U → c-d ∈ U →
        ‖odd F c d-odd (P n) c d‖ < ε := by
  intro ε hε
  obtain ⟨N,hN⟩ := hvanish ε hε
  refine ⟨N,?_⟩
  intro n hn c d hd hp hm
  exact (odd_error_of_derivatives hd hU hF (hP n) (herr n) hp hm).trans_lt (hN n hn)

/-- Paired coefficients a_j,b_j represent powers 2j and 2j+1 respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPair.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1061f257eb2233992c7d2bc887372ea68e1995ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

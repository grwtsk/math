# goldbachTwoArcReducedPrefixBounds_of_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a57acad-7589-80b7-0b53-2195ef1d1678",
  "kind": "theorem",
  "lexical_name": "goldbachTwoArcReducedPrefixBounds_of_theta",
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
  "slug": "goldbachtwoarcreducedprefixbounds-of-theta--452d3a7cfe5aed7eaba6ab00",
  "source": {
    "blob": "17b89fc582127fcf9ce729f4b394c8f0f623ed6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452d3a7cfe5aed7eaba6ab00829604ea607a85e405fa8b2fd3ffb083f4c52b41",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a57acad-7589-80b7-0b53-2195ef1d1678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTwoArcReducedPrefixBounds_of_theta
    {N : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hθ : ∀ k ≤ N, |goldbachPrimeLogTotal k - (k + 1 : ℝ)| ≤ B) :
    ∀ q, 0 < q → q ≤ 2 → ∀ r, r < q → q.Coprime r →
      0 ≤ goldbachTwoArcReducedPrefixBound B q r ∧
        ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤
          goldbachTwoArcReducedPrefixBound B q r := by
  intro q hq hq2 r hr hc
  have hcases : q = 1 ∨ q = 2 := by omega
  rcases hcases with rfl | rfl
  · have hr0 : r = 0 := by omega
    subst r
    change 0 ≤ B ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k 1 0‖ ≤ B
    refine ⟨hB, ?_⟩
    intro k hk
    rw [norm_goldbachResiduePrefixDiscrepancy_one_zero]
    exact hθ k hk
  · have hcases : r = 0 ∨ r = 1 := by omega
    rcases hcases with rfl | rfl
    · norm_num at hc
    · change 0 ≤ B + Real.log 2 ∧
        ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k 2 1‖ ≤ B + Real.log 2
      refine ⟨add_nonneg hB (Real.log_nonneg (by norm_num)), ?_⟩
      intro k hk
      exact (norm_goldbachResiduePrefixDiscrepancy_two_one_le k).trans
        (add_le_add_left (hθ k hk) _)

/-- A scalar universal theta rate becomes the existing all-residue supplier
with the same every-even tail, no prime-power replacement, and Q exactly 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b89fc582127fcf9ce729f4b394c8f0f623ed6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# finiteAnchorLogObservation_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d6b4f35-cf22-a253-4853-d571464073aa",
  "kind": "theorem",
  "lexical_name": "finiteAnchorLogObservation_diagonal",
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
  "slug": "finiteanchorlogobservation-diagonal--63293af6f4b1ba20f24b4f9b",
  "source": {
    "blob": "fb24e68f70587c052162b9737f72b2db5a844aea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63293af6f4b1ba20f24b4f9b07a5fd5f1570ed658c376f81aa6eeee5ab42a030",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6b4f35-cf22-a253-4853-d571464073aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteAnchorLogObservation_diagonal {N a : ℕ} (ha : 1 ≤ a) (haN : a ≤ N)
    (f : ℕ → ℝ) (hlower : ∀ d : ℕ, 1 ≤ d → d < a → f d = 0) :
    finiteAnchorLogObservation N f (2*a) = f a*Real.log 2 := by
  have hap : 0 < a := by omega
  have hp : (a,2) ∈ (2*a).divisorsAntidiagonal :=
    Nat.mem_divisorsAntidiagonal.mpr ⟨by omega,by omega⟩
  unfold finiteAnchorLogObservation
  rw [Finset.sum_eq_single (a,2)]
  · simp [ha,haN,ArithmeticFunction.log_apply]
  · intro p hmem hne
    have hm := Nat.mem_divisorsAntidiagonal.mp hmem
    by_cases hsrc : p.1 ∈ Finset.Icc 1 N
    · rw [if_pos hsrc]
      have hp1 : 1 ≤ p.1 := (Finset.mem_Icc.mp hsrc).1
      by_cases he : p.1 = a
      · have he2 : p.2 = 2 := Nat.eq_of_mul_eq_mul_left hap (by rw [← he]; omega)
        exact (hne (Prod.ext he he2)).elim
      · by_cases hlt : p.1 < a
        · rw [hlower p.1 hp1 hlt,zero_mul]
        · have hp2 : p.2 = 1 := by
            have hp2pos := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hmem
            by_contra hn
            have htwo : 2 ≤ p.2 := by omega
            have hmul := Nat.mul_le_mul_left p.1 htwo
            omega
          simp [hp2,ArithmeticFunction.log_apply]
    · simp [hsrc]
  · intro hn
    exact (hn hp).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb24e68f70587c052162b9737f72b2db5a844aea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

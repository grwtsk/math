# amortized_iteration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8d5c5d0-3a02-c754-b764-c683a785c382",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/Analysis/Asymptotics/MassWeightedRecurrence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab9352a3-8d15-e630-6a95-2096399da0e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e86a7bb-2b90-4679-2ace-6b1a17332fab",
  "kind": "theorem",
  "lexical_name": "amortized_iteration",
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
  "slug": "amortized-iteration--7e78124bfd8b122a09f530cd",
  "source": {
    "blob": "fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 28,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e78124bfd8b122a09f530cd6d9c901041f7b02c0cae8b998ce698d2e09745f4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e86a7bb-2b90-4679-2ace-6b1a17332fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem amortized_iteration
    (φ ω : ℕ → ℝ) (C K : ℝ)
    (hC : 0 ≤ C) (hK : 0 ≤ K)
    (hω : ∀ n, 0 ≤ ω n)
    (hstep : ∀ n, φ (n + 1) ≤ Real.exp (C * ω n) * φ n + C * ω n * K) :
    ∀ n, φ n ≤ Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K) := by
  intro n
  induction n with
  | zero => simp [mass]
  | succ n ih =>
      have hφ :
          Real.exp (C * ω n) * φ n ≤
            Real.exp (C * ω n) *
              (Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K)) :=
        mul_le_mul_of_nonneg_left ih (Real.exp_pos _).le
      have hsmall : 0 ≤ C * ω n * K :=
        mul_nonneg (mul_nonneg hC (hω n)) hK
      have hmass : 0 ≤ C * mass ω (n + 1) :=
        mul_nonneg hC (mass_nonneg ω hω (n + 1))
      have hexp : 1 ≤ Real.exp (C * mass ω (n + 1)) :=
        Real.one_le_exp_iff.mpr hmass
      have hpay :
          C * ω n * K ≤ Real.exp (C * mass ω (n + 1)) * (C * ω n * K) := by
        nlinarith
      have hproduct :
          Real.exp (C * ω n) * Real.exp (C * mass ω n) =
            Real.exp (C * mass ω (n + 1)) := by
        rw [← Real.exp_add]
        congr 1
        simp only [mass]
        ring
      calc
        φ (n + 1) ≤ Real.exp (C * ω n) * φ n + C * ω n * K := hstep n
        _ ≤ Real.exp (C * ω n) *
              (Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K)) +
              C * ω n * K := add_le_add hφ le_rfl
        _ = Real.exp (C * mass ω (n + 1)) * (φ 0 + C * mass ω n * K) +
              C * ω n * K := by rw [← mul_assoc, hproduct]
        _ ≤ Real.exp (C * mass ω (n + 1)) * (φ 0 + C * mass ω n * K) +
              Real.exp (C * mass ω (n + 1)) * (C * ω n * K) :=
          add_le_add le_rfl hpay
        _ = Real.exp (C * mass ω (n + 1)) *
              (φ 0 + C * mass ω (n + 1) * K) := by
          simp only [mass]
          ring

/-- Nonnegative reserves and diagonal energies justify the terminal transfer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

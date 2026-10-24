# generalized_iteration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d8134f07d213526eca3c65ae63d44a362d10b5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialRecurrence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9223816f-4f70-a2b2-ce0b-e419f6a2913b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6d8134f07d213526eca3c65ae63d44a362d10b5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/Analysis/Asymptotics/ExponentialRecurrence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22e9a6f6-c29c-5c1a-b8b6-81f985dfda91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:121461fc-6fdc-953b-d60d-f086b5a8f1cf",
  "kind": "theorem",
  "lexical_name": "generalized_iteration",
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
  "slug": "generalized-iteration--414482c78b5aab5c929ed01b",
  "source": {
    "blob": "6d8134f07d213526eca3c65ae63d44a362d10b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 25,
    "path": "GRWTSK/Analysis/Asymptotics/ExponentialRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:414482c78b5aab5c929ed01b05514a169a497cfc6efee6b25a975d14b065e63b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:121461fc-6fdc-953b-d60d-f086b5a8f1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalized_iteration (φ γ debit : ℕ → ℝ)
    (hγ : ∀ j, 0 ≤ γ j) (hdebit : ∀ j, 0 ≤ debit j)
    (hstep : ∀ j, φ (j+1) ≤ Real.exp (γ j)*φ j+debit j) :
    ∀ n, φ n ≤ Real.exp (prefixSum γ n)*(φ 0+prefixSum debit n) := by
  intro n
  induction n with
  | zero => simp [prefixSum]
  | succ n ih =>
      have hmul := mul_le_mul_of_nonneg_left ih (Real.exp_pos (γ n)).le
      have he : Real.exp (γ n)*Real.exp (prefixSum γ n) =
          Real.exp (prefixSum γ (n+1)) := by
        rw [←Real.exp_add]
        congr 1
        simp [prefixSum, add_comm]
      have hone : 1 ≤ Real.exp (prefixSum γ (n+1)) :=
        Real.one_le_exp_iff.mpr (prefixSum_nonneg γ hγ (n+1))
      have hpay : debit n ≤ Real.exp (prefixSum γ (n+1))*debit n := by
        nlinarith [hdebit n]
      calc
        φ (n+1) ≤ Real.exp (γ n)*φ n+debit n := hstep n
        _ ≤ Real.exp (γ n)*(Real.exp (prefixSum γ n)*(φ 0+prefixSum debit n))+debit n :=
          add_le_add hmul le_rfl
        _ = Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit n)+debit n := by
          rw [←mul_assoc, he]
        _ ≤ Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit n)+
            Real.exp (prefixSum γ (n+1))*debit n := add_le_add le_rfl hpay
        _ = Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit (n+1)) := by
          simp [prefixSum]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/ExponentialRecurrence.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8134f07d213526eca3c65ae63d44a362d10b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

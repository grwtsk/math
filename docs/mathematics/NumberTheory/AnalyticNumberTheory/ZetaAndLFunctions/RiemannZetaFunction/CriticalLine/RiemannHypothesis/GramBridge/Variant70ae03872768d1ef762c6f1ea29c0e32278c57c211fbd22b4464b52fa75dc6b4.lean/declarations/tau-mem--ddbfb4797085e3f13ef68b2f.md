# tau_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c802afc-5008-43d4-561b-b45d4d0bd08b",
  "kind": "theorem",
  "lexical_name": "tau_mem",
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
  "slug": "tau-mem--ddbfb4797085e3f13ef68b2f",
  "source": {
    "blob": "cd847a8f56258c16714cc129ba1f852d78c8fa11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddbfb4797085e3f13ef68b2faaff2bfbdfa0dbeaf6325fd997731c46164d9a77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c802afc-5008-43d4-561b-b45d4d0bd08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tau_mem (hL : 0 < P.L T) (hT : 0 < T) (k : Fin (P.d T)) :
    T ≤ P.tau T k ∧ P.tau T k ≤ 2 * T := by
  have hh : 0 < P.hgrid T := by unfold Params.hgrid; positivity
  have hx0 : 0 ≤ P.L T * T / (2 * Real.pi) := by positivity
  have hk1 : ((k : ℕ) : ℝ) + 1 ≤ P.L T * T / (2 * Real.pi) := by
    have h : (k : ℕ) + 1 ≤ P.d T := k.2
    unfold Params.d at h
    have h' := (Nat.le_floor_iff hx0).mp h
    push_cast at h'
    exact h'
  have hk0 : (0 : ℝ) ≤ ((k : ℕ) : ℝ) := Nat.cast_nonneg _
  have ecast : (((k : ℕ) : ℤ) : ℝ) = ((k : ℕ) : ℝ) := by push_cast; rfl
  have hkh : ((k : ℕ) : ℝ) * P.hgrid T ≤ T := by
    have h1 : ((k : ℕ) : ℝ) ≤ P.L T * T / (2 * Real.pi) := by linarith
    calc ((k : ℕ) : ℝ) * P.hgrid T ≤ (P.L T * T / (2 * Real.pi)) * P.hgrid T :=
          mul_le_mul_of_nonneg_right h1 hh.le
      _ = T := by
          unfold Params.hgrid
          rw [div_mul_div_comm, div_eq_iff (mul_pos (by positivity) hL).ne']
          ring
  unfold Params.tau
  rw [ecast]
  constructor
  · nlinarith [mul_nonneg hk0 hh.le]
  · linarith

/-- T ≤ τ⋆_{kl} ≤ 2T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd847a8f56258c16714cc129ba1f852d78c8fa11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

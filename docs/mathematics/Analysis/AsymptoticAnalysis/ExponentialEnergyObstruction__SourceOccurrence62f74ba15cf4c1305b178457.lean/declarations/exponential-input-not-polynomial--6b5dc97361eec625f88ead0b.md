# exponential_input_not_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d4cc0c9-6b85-0f8b-c2d0-a4e48d3871db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:602cfe6a-df66-2cb5-6548-c33bce2116b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:445009ab-e9ea-b8ca-b842-ec50c8fa2aab",
  "kind": "theorem",
  "lexical_name": "exponential_input_not_polynomial",
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
  "slug": "exponential-input-not-polynomial--6b5dc97361eec625f88ead0b",
  "source": {
    "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 123,
    "path": "GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5dc97361eec625f88ead0b3856a63d44fb5d8a7c77ae1c0de57c003de33237",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:445009ab-e9ea-b8ca-b842-ec50c8fa2aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_input_not_polynomial
    {E : ℝ → ℝ} {c K r : ℝ} (hc : 0 < c)
    (hlower : ExponentialEnergyInput E c) :
    ¬ (∀ᶠ T : ℝ in atTop, E T ≤ K * (1 + T) ^ r) := by
  intro hupper
  have hlimit : Tendsto
      (fun T : ℝ => Real.exp (T + 1) / (T + 1) ^ (r + 2)) atTop atTop :=
    (tendsto_exp_div_rpow_atTop (r + 2)).comp
      (tendsto_atTop_add_const_right atTop 1 tendsto_id)
  have hlarge := hlimit.eventually
    (eventually_gt_atTop (Real.exp 1 * K / c))
  have hfalse : ∀ᶠ T : ℝ in atTop, False := by
    filter_upwards [hlower, hupper, hlarge, eventually_ge_atTop (0 : ℝ)]
      with T hlow hup hbig hT
    have hpos : 0 < 1 + T := by linarith
    have hden : 0 < (T + 1) ^ (r + 2) :=
      Real.rpow_pos_of_pos (by linarith) _
    have hpoly : c * Real.exp T ≤ K * (1 + T) ^ (r + 2) := by
      calc
        c * Real.exp T ≤ E T * (1 + T) ^ 2 := hlow
        _ ≤ (K * (1 + T) ^ r) * (1 + T) ^ 2 :=
          mul_le_mul_of_nonneg_right hup (sq_nonneg _)
        _ = K * (1 + T) ^ (r + 2) := by
          rw [Real.rpow_add hpos, Real.rpow_two]
          ring
    have hupper2 : c * Real.exp (T + 1) ≤
        Real.exp 1 * K * (T + 1) ^ (r + 2) := by
      calc
        c * Real.exp (T + 1) = Real.exp 1 * (c * Real.exp T) := by
          rw [Real.exp_add]
          ring
        _ ≤ Real.exp 1 * (K * (1 + T) ^ (r + 2)) :=
          mul_le_mul_of_nonneg_left hpoly (Real.exp_pos 1).le
        _ = Real.exp 1 * K * (T + 1) ^ (r + 2) := by
          rw [add_comm 1 T]
          ring
    have hbig' : (Real.exp 1 * K / c) * (T + 1) ^ (r + 2) <
        Real.exp (T + 1) := (lt_div_iff₀ hden).mp hbig
    have hbig2 : Real.exp 1 * K * (T + 1) ^ (r + 2) <
        c * Real.exp (T + 1) := by
      calc
        Real.exp 1 * K * (T + 1) ^ (r + 2) =
            c * ((Real.exp 1 * K / c) * (T + 1) ^ (r + 2)) := by
          field_simp
        _ < c * Real.exp (T + 1) := mul_lt_mul_of_pos_left hbig' hc
    linarith
  exact hfalse.exists.choose_spec

/-- A uniform NC proposal is impossible once the exact broad inequality,
nonnegative returned reserve, polynomial budget, and declared exponential
source-energy input have all been supplied.  No arithmetic input is hidden
inside this theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrence62f74ba15cf4c1305b178457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/ExponentialEnergyObstruction.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9887c4023b79fc6cda09e8dd77f897a3ca2f618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

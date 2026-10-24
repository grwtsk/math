# full_source_window_has_quarter_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b19265a-9fef-2686-afe5-deaba67e3e6b",
  "kind": "theorem",
  "lexical_name": "full_source_window_has_quarter_envelope",
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
  "slug": "full-source-window-has-quarter-envelope--661461ce2d2be9e6947cf853",
  "source": {
    "blob": "1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661461ce2d2be9e6947cf853f1d0c5f984ccd38812e95798058362d608fdb700",
  "verification": {
    "reference": "docs/verification/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b19265a-9fef-2686-afe5-deaba67e3e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_source_window_has_quarter_envelope {c A : ℝ}
    (hc : 0 ≤ c) (hA : entrance c ≤ A) :
    ∀ x ∈ Icc (A ^ 2) (Real.exp (2 * A)), x ^ (-1 / 4 : ℝ) ≤ envelope c x := by
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hA0 : 0 < A := by linarith
  have hAe : Real.exp (8 * c ^ 2) ≤ A := (le_max_right _ _).trans hA
  have hAlog : 8 * c ^ 2 ≤ Real.log A := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hAe
  intro x hx
  have hx0 : 0 < x := (sq_pos_of_pos hA0).trans_le hx.1
  have hlog := Real.log_le_log (sq_pos_of_pos hA0) hx.1
  rw [Real.log_pow] at hlog
  apply classical_pnt_envelope_dominates_quarter_power hc hx0
  norm_num at hlog
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

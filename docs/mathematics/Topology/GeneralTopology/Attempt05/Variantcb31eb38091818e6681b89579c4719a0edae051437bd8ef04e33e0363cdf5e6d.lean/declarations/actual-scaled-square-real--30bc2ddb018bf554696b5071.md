# actual_scaled_square_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbef82129a08a7d85ccb6be5e2beda9748aecb4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd5c0b30-2835-9517-76e1-20c9a2b9ddbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae8a24c5-feba-b282-3a43-7887071cea24",
  "kind": "theorem",
  "lexical_name": "actual_scaled_square_real",
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
  "slug": "actual-scaled-square-real--30bc2ddb018bf554696b5071",
  "source": {
    "blob": "cbef82129a08a7d85ccb6be5e2beda9748aecb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30bc2ddb018bf554696b50713c2ef9e1e8bbf4e7fe7f82331010266c20141352",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae8a24c5-feba-b282-3a43-7887071cea24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbef82129a08a7d85ccb6be5e2beda9748aecb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

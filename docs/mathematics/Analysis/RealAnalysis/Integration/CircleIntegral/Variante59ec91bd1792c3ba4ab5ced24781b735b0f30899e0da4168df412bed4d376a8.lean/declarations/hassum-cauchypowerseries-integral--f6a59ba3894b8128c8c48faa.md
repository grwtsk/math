# hasSum_cauchyPowerSeries_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 612,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00ab0c64-3052-7f14-c01b-5027cf366c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:950bee21-d84f-256f-6921-fc1059ca3add",
  "kind": "theorem",
  "lexical_name": "hasSum_cauchyPowerSeries_integral",
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
  "slug": "hassum-cauchypowerseries-integral--f6a59ba3894b8128c8c48faa",
  "source": {
    "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 612,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a59ba3894b8128c8c48faa8da7d1505de42bdb30b5f281f3dce190e25a5f45",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:950bee21-d84f-256f-6921-fc1059ca3add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_cauchyPowerSeries_integral {f : ℂ → E} {c : ℂ} {R : ℝ} {w : ℂ}
    (hf : CircleIntegrable f c R) (hw : abs w < R) :
    HasSum (fun n => cauchyPowerSeries f c R n fun _ => w)
      ((2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), (z - (c + w))⁻¹ • f z) := by
  simp only [cauchyPowerSeries_apply]
  exact (hasSum_two_pi_I_cauchyPowerSeries_integral hf hw).const_smul _
#align has_sum_cauchy_power_series_integral hasSum_cauchyPowerSeries_integral

/-- For any circle integrable function `f`, the power series `cauchyPowerSeries f c R`, `R > 0`,
converges to the Cauchy integral `(2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), (z - w)⁻¹ • f z` on the open
disc `Metric.ball c R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4630ca192db1188ba6036a7bf8b4670540e0e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# logDeriv_mul_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c60cf81-0413-5f8d-1f98-c02a73904ff8",
  "kind": "theorem",
  "lexical_name": "logDeriv_mul_sub_one",
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
  "slug": "logderiv-mul-sub-one--7f046cc880532d8bc143237d",
  "source": {
    "blob": "5994379f36207f5dde75c32a242c74443f519d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f046cc880532d8bc143237d4e0358bdca056738584ca39a15491d3d7944be6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c60cf81-0413-5f8d-1f98-c02a73904ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_mul_sub_one {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    logDeriv (fun w : ℂ => w * (w - 1)) s = 1 / s + 1 / (s - 1) := by
  have h1' : s - 1 ≠ 0 := sub_ne_zero.mpr h1
  rw [logDeriv_mul (f := fun w : ℂ => w) (g := fun w : ℂ => w - 1) s h0 h1'
    differentiableAt_id (differentiableAt_id.sub_const 1)]
  have e1 : logDeriv (fun w : ℂ => w) s = 1 / s := by
    rw [logDeriv_apply]; simp
  have e2 : logDeriv (fun w : ℂ => w - 1) s = 1 / (s - 1) := by
    rw [logDeriv_apply]
    simp
  rw [e1, e2]

/-- **Γℝ piece** (WeilEF.gamma_line_shift + gammaR_bracket):
(1/2π)∫[H(c+it)+H(1−c−it)]·Γℝ′/Γℝ(c+it) dt = (1/2π)∫ h_k(r)·gammaBracket(r) dr. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5994379f36207f5dde75c32a242c74443f519d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

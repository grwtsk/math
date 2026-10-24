# ctr_sub_frobSq_perturb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78c291cd4623486dfc4cbe20df83195979b7d771",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1477cc94-079f-387b-b12f-40974ca19596",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3228602a-67fd-449a-1704-dbc872a4a2d9",
  "kind": "theorem",
  "lexical_name": "ctr_sub_frobSq_perturb",
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
  "slug": "ctr-sub-frobsq-perturb--240a2a5da20ea8b7147c89a5",
  "source": {
    "blob": "78c291cd4623486dfc4cbe20df83195979b7d771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:240a2a5da20ea8b7147c89a5b76000ae1b169e9de632e0ab2711b7a84c9b679f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3228602a-67fd-449a-1704-dbc872a4a2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ctr_sub_frobSq_perturb {Ghat Ahat Ehat : Matrix n n 𝕜} (c : ℝ) (hc : 0 ≤ c)
    (hGAE : Ghat = Ahat + Ehat) {B : ℝ} (hB : 0 ≤ B)
    (htrE : |rtrace Ehat| ≤ B) (hfrE : frobSq Ehat ≤ B ^ 2) :
    c * rtrace Ghat - frobSq Ghat - B * (c + 2 * Real.sqrt (frobSq Ghat) + B)
      ≤ c * rtrace Ahat - frobSq Ahat := by
  have hA : Ahat = Ghat - Ehat := by rw [hGAE]; abel
  have htr : rtrace Ahat = rtrace Ghat - rtrace Ehat := by rw [hA, rtrace_sub]
  have hsqE : Real.sqrt (frobSq Ehat) ≤ B := Real.sqrt_le_iff.mpr ⟨hB, hfrE⟩
  have hsqG : 0 ≤ Real.sqrt (frobSq Ghat) := Real.sqrt_nonneg _
  have hfrA : frobSq Ahat ≤ (Real.sqrt (frobSq Ghat) + B) ^ 2 := by
    rw [hA]
    refine (frobSq_sub_le Ghat Ehat).trans ?_
    gcongr
  have habs := abs_le.mp htrE
  have hGsq : Real.sqrt (frobSq Ghat) ^ 2 = frobSq Ghat := Real.sq_sqrt (frobSq_nonneg _)
  nlinarith [mul_le_mul_of_nonneg_left habs.1 hc, sq_nonneg (Real.sqrt (frobSq Ghat) + B)]

variable {Z : ZeroConfig} {P : Params} {T : ℝ}

/-- **Seam A, multiplicity-aware, c = 2**: the seamA shape with conclusion N₀ˢ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c291cd4623486dfc4cbe20df83195979b7d771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

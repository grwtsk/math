# contDiffOn_Icc_deriv_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4844,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ebe5976-347d-63e7-7528-b98040741825",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8fa94dd-afe5-86fd-c3e6-8e00eacedb52",
  "kind": "lemma",
  "lexical_name": "contDiffOn_Icc_deriv_integrableOn",
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
  "slug": "contdiffon-icc-deriv-integrableon--678183560ca57ac7b64636e6",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4864,
    "line": 4844,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:678183560ca57ac7b64636e61c1aef488d00335f9dad6a544808f855bf843631",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8fa94dd-afe5-86fd-c3e6-8e00eacedb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4844–4864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma contDiffOn_Icc_deriv_integrableOn {a b : ℝ} (hab : a < b)
    {f : ℝ → ℂ} (h_c2 : ContDiffOn ℝ 2 f (Set.Icc a b)) :
    IntegrableOn (deriv f) (Set.Icc a b) := by
  have h_int_within : IntegrableOn (derivWithin f (Set.Icc a b)) (Set.Icc a b) :=
    ContinuousOn.integrableOn_compact isCompact_Icc
      (h_c2.continuousOn_derivWithin (uniqueDiffOn_Icc hab) (by norm_num))
  rw [integrableOn_Icc_iff_integrableOn_Ioo] at h_int_within ⊢
  refine IntegrableOn.congr_fun h_int_within ?_ measurableSet_Ioo
  intro x hx
  exact (derivWithin_subset Set.Ioo_subset_Icc_self (isOpen_Ioo.uniqueDiffWithinAt hx)
    (h_c2.differentiableOn (by norm_num) x (Set.Ioo_subset_Icc_self hx))).symm.trans
    (derivWithin_of_isOpen isOpen_Ioo hx)

@[blueprint
  "varphi-deriv-integ"
  (title := "$\\varphi'$ integrable")
  (statement := /-- The function $(\varphi_\nu^\pm)'$ is integrable. -/)
  (proof := /-- Apply Lemmas \ref{phi-c2-left}, \ref{phi-c2-right}, \ref{phi-cts} We know $(\varphi_\nu^\pm)'$ is integrable because it is $C^1$ on $[-1, 0]$ and $[0, 1]$, and identically $0$ outside $[-1, 1]$./
-/)
  (latexEnv := "lemma")
  (discussion := 1228)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L4844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

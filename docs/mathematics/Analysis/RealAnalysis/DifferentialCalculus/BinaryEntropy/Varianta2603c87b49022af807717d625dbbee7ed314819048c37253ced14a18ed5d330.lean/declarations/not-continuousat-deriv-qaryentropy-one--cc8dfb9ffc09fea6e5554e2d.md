# not_continuousAt_deriv_qaryEntropy_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:348dc9ad-09c2-a5af-c69a-be877f41f1e0",
  "kind": "lemma",
  "lexical_name": "not_continuousAt_deriv_qaryEntropy_one",
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
  "slug": "not-continuousat-deriv-qaryentropy-one--cc8dfb9ffc09fea6e5554e2d",
  "source": {
    "blob": "cd975be22dd84dc7e31fd48fcd7435094d4f75aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8dfb9ffc09fea6e5554e2dd1eb174ae1bdeb7da3f2afadc5815732a2e9cf8e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:348dc9ad-09c2-a5af-c69a-be877f41f1e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_continuousAt_deriv_qaryEntropy_one :
    ¬ContinuousAt (deriv (qaryEntropy q)) 1 := by
  have tendstoBot : Tendsto (fun p ↦ log (q - 1) + log (1 - p) - log p) (𝓝[<] 1) atBot := by
    have : (fun p ↦ log (q - 1) + log (1 - p) - log p)
      = (fun p ↦ log (q - 1) + (log (1 - p) - log p)) := by
      ext
      ring
    rw [this]
    apply tendsto_atBot_add_const_left
    exact tendsto_log_one_sub_sub_log_nhdsLT_one_atBot
  apply not_continuousAt_of_tendsto (Filter.Tendsto.congr' _ tendstoBot) nhdsWithin_le_nhds
  · simp only [disjoint_nhds_atBot_iff, not_isBot, not_false_eq_true]
  filter_upwards [Ioo_mem_nhdsLT (show 1 - 2⁻¹ < (1 : ℝ) by norm_num)]
  intros
  apply (deriv_qaryEntropy _ _).symm
  · simp_all only [mem_Ioo, ne_eq]
    linarith [show (1 : ℝ) = 2⁻¹ + 2⁻¹ by norm_num]
  · simp_all only [mem_Ioo, ne_eq]
    linarith [two_inv_lt_one (α := ℝ)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd975be22dd84dc7e31fd48fcd7435094d4f75aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

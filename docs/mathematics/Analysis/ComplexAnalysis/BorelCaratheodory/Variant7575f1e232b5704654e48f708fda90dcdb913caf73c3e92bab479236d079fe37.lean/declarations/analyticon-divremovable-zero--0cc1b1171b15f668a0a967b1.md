# AnalyticOn_divRemovable_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc560016-31a8-658a-01ad-0f655fe57ba0",
  "kind": "lemma",
  "lexical_name": "AnalyticOn_divRemovable_zero",
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
  "slug": "analyticon-divremovable-zero--0cc1b1171b15f668a0a967b1",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 74,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cc1b1171b15f668a0a967b188528a8ed0fecda70729647cd43db598d38e0f66",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc560016-31a8-658a-01ad-0f655fe57ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticOn_divRemovable_zero {f : ℂ → ℂ} {s : Set ℂ}
    (sInNhds0 : s ∈ nhds 0) (zero : f 0 = 0) (o : IsOpen s)
    (analytic : AnalyticOn ℂ f s) :
    AnalyticOn ℂ (divRemovable_zero f) s := by
  rw [Complex.analyticOn_iff_differentiableOn o,
    ← Complex.differentiableOn_compl_singleton_and_continuousAt_iff sInNhds0]
  constructor
  · rw [differentiableOn_congr (fun x hyp_x => by
      apply Function.update_of_ne
      rw [Set.mem_diff, Set.mem_singleton_iff] at hyp_x
      exact hyp_x.right)]
    exact DifferentiableOn.fun_div
      (AnalyticOn.differentiableOn
        (AnalyticOn.mono analytic Set.diff_subset))
      (DifferentiableOn.mono (differentiableOn_id (s := Set.univ))
        (Set.subset_univ (s \ {0})))
      (fun x hyp_x => by
        rw [Set.mem_diff, Set.mem_singleton_iff] at hyp_x
        exact hyp_x.right)
  · have U :=
      HasDerivAt.continuousAt_div (c := 0) (a := deriv f 0)
        (f := f)
        (DifferentiableOn.hasDerivAt
          ((Complex.analyticOn_iff_differentiableOn o).mp analytic)
          sInNhds0)
    have T : (fun (x : ℂ) ↦ (f x - 0) / (x - 0)) =
        (fun (x : ℂ) ↦ f x / x) := by
      funext x
      rw [sub_zero, sub_zero]
    rwa [zero, T] at U

@[blueprint "AnalyticOn_divRemovable_zero_closedBall"
  (title := "AnalyticOn-divRemovable-zero-closedBall")
  (statement := /--
    Let $f$ be a complex function analytic on the closed ball
    $|z|\leq R$ such that $f(0)=0$.
    Then, with $g$ defined as in
    Definition~\ref{divRemovable_zero}, $g$ is analytic on
    $|z|\leq R$.
  -/)
  (proof := /--
    The proof is similar to that of
    Lemma~\ref{AnalyticOn_divRemovable_zero}, but we need to
    consider two cases: when $x$ is on the boundary of the closed
    ball and when it is in the interior.
    In the first case, we take a small open ball around $x$ that
    lies entirely within the closed ball, and apply
    Lemma~\ref{AnalyticOn_divRemovable_zero} on this smaller ball.
    In the second case, we can take the entire open ball centered
    at $0$ with radius $R$, and again apply
    Lemma~\ref{AnalyticOn_divRemovable_zero}.
    In both cases, we use the fact that $f(0)=0$ to ensure that
    the removable singularity at $0$ is handled correctly.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# MellinOfDeltaSpikeAt1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd66918e-cba2-07fe-a124-6f22b1d04387",
  "kind": "lemma",
  "lexical_name": "MellinOfDeltaSpikeAt1",
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
  "slug": "mellinofdeltaspikeat1--92791e248a2c22acb5e8ba9a",
  "source": {
    "blob": "78046834c8d8ce98551fa620f4fcf0eefe224439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 702,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92791e248a2c22acb5e8ba9aa695a978a080b2a14490c167ad2d015db5f6920d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd66918e-cba2-07fe-a124-6f22b1d04387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MellinOfDeltaSpikeAt1 (ν : ℝ → ℝ) {ε : ℝ} (εpos : ε > 0) :
    𝓜 (fun x ↦ (DeltaSpike ν ε x : ℂ)) 1 = 𝓜 (fun x ↦ (ν x : ℂ)) ε := by
  convert MellinOfDeltaSpike ν εpos 1; simp [mul_one]



@[blueprint
  (title := "MellinOfDeltaSpikeAt1-asymp")
  (statement := /--
  As $\epsilon\to 0$, we have
  $$\mathcal{M}(\nu_\epsilon)(1) = 1+O(\epsilon).$$
  -/)
  (proof := /--
  By Lemma \ref{MellinOfDeltaSpikeAt1},
  $$
    \mathcal M(\nu_\epsilon)(1)=\mathcal M(\nu)(\epsilon)
  $$
  which by Definition \ref{MellinTransform} is
  $$
    \mathcal M(\nu)(\epsilon)=\int_0^\infty\nu(x)x^{\epsilon-1}dx
    .
  $$
  Since $\nu(x) x^{\epsilon-1}$ is integrable (because $\nu$ is continuous and compactly
  supported),
  $$
    \mathcal M(\nu)(\epsilon)-\int_0^\infty\nu(x)\frac{dx}x
    =\int_0^\infty\nu(x)(x^{\epsilon-1}-x^{-1})dx
    .
  $$
  By Taylor's theorem,
  $$
    x^{\epsilon-1}-x^{-1}=O(\epsilon)
  $$
  so, since $\nu$ is absolutely integrable,
  $$
    \mathcal M(\nu)(\epsilon)-\int_0^\infty\nu(x)\frac{dx}x=O(\epsilon)
    .
  $$
  We conclude the proof using Theorem \ref{SmoothExistence}.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78046834c8d8ce98551fa620f4fcf0eefe224439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

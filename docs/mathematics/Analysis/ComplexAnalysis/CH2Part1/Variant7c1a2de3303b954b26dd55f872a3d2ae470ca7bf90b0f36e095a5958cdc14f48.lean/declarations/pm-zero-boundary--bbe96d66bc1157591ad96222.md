# ϕ_pm_zero_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fc3ce3d-5aa0-91fc-7d67-c0f5a0740a4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d368b7bd-196d-66d7-0893-07e8233935fd",
  "kind": "theorem",
  "lexical_name": "ϕ_pm_zero_boundary",
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
  "slug": "pm-zero-boundary--bbe96d66bc1157591ad96222",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2265,
    "line": 2240,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe96d66bc1157591ad96222f9d1d037fc9bf5f750a9bb167e30271aeaaa4d45",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d368b7bd-196d-66d7-0893-07e8233935fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2240–2265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_pm_zero_boundary (ν ε : ℝ) (hlam : ν ≠ 0) : ϕ_pm ν ε (-1) = 0 ∧ ϕ_pm ν ε 1 = 0 := by
  constructor
  · have h_eq : ϕ_pm ν ε =ᶠ[nhdsWithin (-1) (Set.Iio (-1))] 0 := by
      filter_upwards [self_mem_nhdsWithin] with z hz
      unfold ϕ_pm; split_ifs with hz_mem <;> try rfl
      exfalso; linarith [Set.mem_Iio.mp hz]
    exact tendsto_nhds_unique
      (tendsto_nhdsWithin_of_tendsto_nhds (ϕ_continuous ν ε hlam).continuousAt)
      (tendsto_const_nhds.congr' h_eq.symm)
  · have h_eq : ϕ_pm ν ε =ᶠ[nhdsWithin 1 (Set.Ioi 1)] 0 := by
      filter_upwards [self_mem_nhdsWithin] with z hz
      unfold ϕ_pm; split_ifs with hz_mem <;> try rfl
      exfalso; linarith [Set.mem_Ioi.mp hz]
    exact tendsto_nhds_unique
      (tendsto_nhdsWithin_of_tendsto_nhds (ϕ_continuous ν ε hlam).continuousAt)
      (tendsto_const_nhds.congr' h_eq.symm)

@[blueprint
  "phi-circ-bound-right"
  (title := "Bound on $\\Phi^{\\pm,\\circ}_\\nu$ from above")
  (statement := /--
  Let $0 < \nu_0 \leq \nu_1$ and $c > - \nu_0/2\pi$, then there exists $C$ such that for all $\nu \in [\nu_0, \nu_1]$, $\Im z \geq c$ one has $|\Phi^{\pm,\circ}_{\nu}(z)| \leq C$.
  -/)
  (proof := /-- The function $\coth w = 1 + \frac{2}{e^{2w}-1}$ is bounded away from the imaginary line $\Re w = 0$, that is, it is bounded on $\Re w \geq \kappa$ and $\Re w \leq -\kappa$ for any $\kappa > 0$. The map $w(z) = \nu - 2\pi i z$ sends the line $\Im z = -\frac{\nu}{2\pi}$ to the imaginary line, and the region $\Im z \geq c$ is sent to $\Re w \geq 2\pi c + \nu$.
 -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L2240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

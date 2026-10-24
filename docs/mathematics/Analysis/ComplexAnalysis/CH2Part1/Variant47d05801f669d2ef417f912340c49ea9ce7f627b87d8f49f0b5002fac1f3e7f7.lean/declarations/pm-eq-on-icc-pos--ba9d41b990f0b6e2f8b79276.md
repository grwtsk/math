# ϕ_pm_eq_on_Icc_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82311a25-d9e5-68ef-8bdd-b1a3f874b33a",
  "kind": "lemma",
  "lexical_name": "ϕ_pm_eq_on_Icc_pos",
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
  "slug": "pm-eq-on-icc-pos--ba9d41b990f0b6e2f8b79276",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2772,
    "line": 2754,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9d41b990f0b6e2f8b79276c096d503e344dcbbeab491f8c64532aca3d88f48",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82311a25-d9e5-68ef-8bdd-b1a3f874b33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2754–2772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ϕ_pm_eq_on_Icc_pos (ν ε : ℝ) {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    ϕ_pm ν ε t = Phi_circ ν ε t + Phi_star ν ε t := by
  dsimp [ϕ_pm]
  rw [if_pos ⟨by linarith [ht.1], ht.2⟩]
  rcases ht.1.lt_or_eq with h | rfl
  · simp [Real.sign_of_pos h]
  · simp [Phi_star_zero]

@[blueprint
  "varphi-fourier-ident"
  (title := "Fourier transform of $\\varphi$")
  (statement := /--
\[
\widehat{\varphi^{\pm}_{\nu}}(x) = \int_{-1}^{1} \varphi^{\pm}_{\nu}(t)\, e(-tx)\, dt = \int_{-1}^{0} \bigl(\Phi^{\pm,\circ}_{\nu}(t) - \Phi^{\pm,\star}_{\nu}(t)\bigr) e(-tx)\, dt + \int_0^1 \bigl(\Phi^{\pm,\circ}_{\nu}(t) + \Phi^{\pm,\star}_{\nu}(t)\bigr) e(-tx)\, dt.
\]
  -/)
  (proof := /-- By the definition of the Fourier transform, and the fact that $\varphi^{\pm}_{\nu}$ is supported on $[-1,1]$. -/)
  (latexEnv := "sublemma")
  (discussion := 1079)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L2754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

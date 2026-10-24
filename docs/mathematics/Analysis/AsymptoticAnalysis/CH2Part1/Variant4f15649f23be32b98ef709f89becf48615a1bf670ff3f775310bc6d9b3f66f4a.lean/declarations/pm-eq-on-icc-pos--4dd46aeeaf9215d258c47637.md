# ϕ_pm_eq_on_Icc_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9da9a730-e10a-0995-1df9-e45139aeceac",
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
  "slug": "pm-eq-on-icc-pos--4dd46aeeaf9215d258c47637",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2769,
    "line": 2751,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dd46aeeaf9215d258c47637ec54ea02963aad68e2dcc4d11a4ce5f870dcff19",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da9a730-e10a-0995-1df9-e45139aeceac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2751–2769.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L2751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

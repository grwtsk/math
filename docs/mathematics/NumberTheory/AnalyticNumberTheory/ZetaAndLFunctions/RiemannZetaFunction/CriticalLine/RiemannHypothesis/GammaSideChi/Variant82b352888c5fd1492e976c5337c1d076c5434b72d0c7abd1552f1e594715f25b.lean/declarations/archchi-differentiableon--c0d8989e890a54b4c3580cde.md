# archChi_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c04f3fda-9a80-7fc8-a662-e06e5cf3e7c7",
  "kind": "lemma",
  "lexical_name": "archChi_differentiableOn",
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
  "slug": "archchi-differentiableon--c0d8989e890a54b4c3580cde",
  "source": {
    "blob": "267fd268c63a7a8d9cfc7e51348d51963561b6e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d8989e890a54b4c3580cdef48267c3b82cb4291af22c61a95e33e01f8beaad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c04f3fda-9a80-7fc8-a662-e06e5cf3e7c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma archChi_differentiableOn :
    DifferentiableOn ℂ (archChi q κ) rightHalfPlane := by
  intro s hs
  apply DifferentiableAt.differentiableWithinAt
  have h1 : DifferentiableAt ℂ (fun s : ℂ => (q : ℂ) ^ (s / 2)) s := by
    apply DifferentiableAt.const_cpow (by fun_prop)
    exact Or.inl (by exact_mod_cast (Nat.pos_of_ne_zero (NeZero.ne q)).ne')
  have h2 : DifferentiableAt ℂ (fun s : ℂ => Complex.Gammaℝ (s + κ)) s := by
    have hre : 0 < (s + (κ:ℂ)).re := by
      have : (0:ℝ) ≤ κ := Nat.cast_nonneg κ
      have hs' : 0 < s.re := hs
      simp only [Complex.add_re, Complex.natCast_re]
      linarith
    have hG : DifferentiableAt ℂ Complex.Gammaℝ (s + κ) :=
      (Gammaℝ_differentiableOn (s + κ) hre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hre)
    have haff : DifferentiableAt ℂ (fun z : ℂ => z + (κ:ℂ)) s := by fun_prop
    have hcomp : DifferentiableAt ℂ (Complex.Gammaℝ ∘ fun z : ℂ => z + (κ:ℂ)) s :=
      DifferentiableAt.comp s hG haff
    exact hcomp
  exact h1.mul h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267fd268c63a7a8d9cfc7e51348d51963561b6e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# exact_transformed_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:883f2278-8d90-e179-6eea-71d6a2891223",
  "kind": "theorem",
  "lexical_name": "exact_transformed_derivative",
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
  "slug": "exact-transformed-derivative--86b2b6bbc98b765d47ec8e84",
  "source": {
    "blob": "0a5be36465168573473716b56fd98beaa4499318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b2b6bbc98b765d47ec8e846018f059bcf2afd1b4f18d4eb432c8397560ec8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:883f2278-8d90-e179-6eea-71d6a2891223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_transformed_derivative {phi psi j g : ℝ → ℝ} {x jp vp w : ℝ}
    (hj : 0 < j x) (hphi : HasDerivAt phi (j x) x)
    (hjac : HasDerivAt j jp x) (hpsi : HasDerivAt psi vp x)
    (hg : HasDerivAt g w (phi x))
    (htransport : ∀ u : ℝ, g (phi u) = psi u / Real.sqrt (j u)) :
    w = (vp - (jp / (2 * j x)) * psi x) / (j x * Real.sqrt (j x)) := by
  have hs : Real.sqrt (j x) ≠ 0 := (Real.sqrt_pos.mpr hj).ne'
  have hrhs := hpsi.div (hjac.sqrt hj.ne') hs
  have hcomp := hg.comp x hphi
  have he : (fun u ↦ g (phi u)) = (fun u ↦ psi u / Real.sqrt (j u)) := funext htransport
  change HasDerivAt (fun u ↦ g (phi u)) (w * j x) x at hcomp
  rw [he] at hcomp
  exact solve_chain_quotient hj (hcomp.unique hrhs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5be36465168573473716b56fd98beaa4499318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

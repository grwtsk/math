# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27cdc5366813e3e8aa8cab1689d8904f55e620974b76abc0814771ca2ec42bda",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--5d15b0823a1666c2dcf118ce",
  "source": {
    "blob": "4ad573fd4b3663855be96280fd4e2322346d818c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 58,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MathlibAPIProbe/Variant8726a3b492d9006a26da7186363acba7c9513bb4a48779804fe2ce7eebf10068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d15b0823a1666c2dcf118ce7ce29ef1ee56752144149668142ccae77611b1cc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MathlibAPIProbe/Variant8726a3b492d9006a26da7186363acba7c9513bb4a48779804fe2ce7eebf10068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27cdc5366813e3e8aa8cab1689d8904f55e620974b76abc0814771ca2ec42bda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (f g : ℂ → ℂ) (z : ℂ) : Prop := f =ᶠ[nhdsWithin z {z}ᶜ] g

/-! ## Divisors and compact finiteness -/

#check MeromorphicOn.divisor
#check MeromorphicOn.divisor_apply
#check MeromorphicOn.divisor_support_finite_of_subset
#check divisor_sphere_support_finite
#check Function.locallyFinsuppWithin
#check Function.locallyFinsuppWithin.finiteSupport
#check MeromorphicOn.codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top
#check MeromorphicOn.codiscreteWithin_setOf_meromorphicOrderAt_eq_zero_or_top

/-! ## Circle and rectangle integrals -/

#check circleIntegral
#check_failure Complex.circleIntegral
#check circleIntegral_def_Icc
#check circleIntegral.integral_sub_center_inv
#check Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
#check Complex.integral_boundary_rect_of_hasFDerivAt_real_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
#check Complex.integral_boundary_rect_eq_zero_of_differentiableOn
#check_failure Complex.integral_boundary_rect

/-! ## Topological paths -/

#check Path
#check Path.trans
#check Path.map

/-! ## Deliberate negative probes -/

#check_failure Complex.residue
#check_failure residue
#check_failure Complex.contourIntegral
#check_failure contourIntegral
#check_failure Complex.pathIntegral
#check_failure pathIntegral
#check_failure Complex.windingNumber
#check_failure windingNumber
#check_failure Path.windingNumber
#check_failure Complex.LaurentSeries
#check_failure LaurentSeries
#check_failure Complex.principalPart
#check_failure principalPart

/-! ## Focused declaration searches -/

#find meromorphicOrderAt _ _ = _ ↔ _
#find (MeromorphicOn.divisor _ _).support.Finite
#find circleIntegral (_ : ℂ → ℂ) _ _ = (0 : ℂ)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MathlibAPIProbe/Variant8726a3b492d9006a26da7186363acba7c9513bb4a48779804fe2ce7eebf10068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MathlibAPIProbe/Variant8726a3b492d9006a26da7186363acba7c9513bb4a48779804fe2ce7eebf10068.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ad573fd4b3663855be96280fd4e2322346d818c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

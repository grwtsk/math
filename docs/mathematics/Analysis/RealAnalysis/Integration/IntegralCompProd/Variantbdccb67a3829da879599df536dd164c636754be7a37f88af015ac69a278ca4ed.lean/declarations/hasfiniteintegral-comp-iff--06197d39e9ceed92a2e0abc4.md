# hasFiniteIntegral_comp_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff113160-749b-9280-8817-7cb3efdc147c",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_comp_iff'",
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
  "slug": "hasfiniteintegral-comp-iff--06197d39e9ceed92a2e0abc4",
  "source": {
    "blob": "59633ddb4f5a97672a82a8e6d27d0282e35ad12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 334,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06197d39e9ceed92a2e0abc4a2591627300d973af87823c01dda26bf94fe6bc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff113160-749b-9280-8817-7cb3efdc147c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_comp_iff' ⦃f : γ → E⦄ (hf : AEStronglyMeasurable f ((η ∘ₖ κ) a)) :
    HasFiniteIntegral f ((η ∘ₖ κ) a) ↔
    (∀ᵐ x ∂κ a, HasFiniteIntegral f (η x)) ∧ HasFiniteIntegral (fun x ↦ ∫ y, ‖f y‖ ∂η x) (κ a) := by
  rw [hasFiniteIntegral_congr hf.ae_eq_mk, hasFiniteIntegral_comp_iff hf.stronglyMeasurable_mk]
  refine and_congr (eventually_congr ?_) (hasFiniteIntegral_congr ?_)
  · filter_upwards [ae_ae_of_ae_comp hf.ae_eq_mk.symm] with _ hx using
      hasFiniteIntegral_congr hx
  · filter_upwards [ae_ae_of_ae_comp hf.ae_eq_mk.symm] with _ hx using
      integral_congr_ae (EventuallyEq.fun_comp hx _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59633ddb4f5a97672a82a8e6d27d0282e35ad12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

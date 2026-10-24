# hasIntegral_GP_divergence_of_forall_hasDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:967e0bcc-efec-6156-f6f3-7bda6702a7ad",
  "kind": "theorem",
  "lexical_name": "hasIntegral_GP_divergence_of_forall_hasDerivWithinAt",
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
  "slug": "hasintegral-gp-divergence-of-forall-hasderivwithinat--69929216be56fac4b6432d3f",
  "source": {
    "blob": "1f75f2d96d27eb308a12d966567ca3ae7d1e9759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69929216be56fac4b6432d3fd8b5e138f73d65301cefcf70b2f1f6fe8e2112d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:967e0bcc-efec-6156-f6f3-7bda6702a7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasIntegral_GP_divergence_of_forall_hasDerivWithinAt
    (f : (Fin (n + 1) → ℝ) → Fin (n + 1) → E)
    (f' : (Fin (n + 1) → ℝ) → (Fin (n + 1) → ℝ) →L[ℝ] (Fin (n + 1) → E))
    (s : Set (Fin (n + 1) → ℝ)) (hs : s.Countable)
    (Hs : ∀ x ∈ s, ContinuousWithinAt f (Box.Icc I) x)
    (Hd : ∀ x ∈ (Box.Icc I) \ s, HasFDerivWithinAt f (f' x) (Box.Icc I) x) :
    HasIntegral.{0, u, u} I GP (fun x => ∑ i, f' x (Pi.single i 1) i) BoxAdditiveMap.volume
      (∑ i,
        (integral.{0, u, u} (I.face i) GP (fun x => f (i.insertNth (I.upper i) x) i)
            BoxAdditiveMap.volume -
          integral.{0, u, u} (I.face i) GP (fun x => f (i.insertNth (I.lower i) x) i)
            BoxAdditiveMap.volume)) := by
  refine HasIntegral.sum fun i _ => ?_
  simp only [hasFDerivWithinAt_pi', continuousWithinAt_pi] at Hd Hs
  exact hasIntegral_GP_pderiv I _ _ s hs (fun x hx => Hs x hx i) (fun x hx => Hd x hx i) i
set_option linter.uppercaseLean3 false in
#align box_integral.has_integral_GP_divergence_of_forall_has_deriv_within_at BoxIntegral.hasIntegral_GP_divergence_of_forall_hasDerivWithinAt

end BoxIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant56f4723b356df36412bd8dc9b373946bda2c075007bb08cc7ecbebff2ca142d6.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f75f2d96d27eb308a12d966567ca3ae7d1e9759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

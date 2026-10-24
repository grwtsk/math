# CertifiedOrbitSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5412a090bc0e1f69e947256cc85a55468bbbe592fd7ef4308d51096210c9057",
  "kind": "structure",
  "lexical_name": "CertifiedOrbitSemigroup",
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
  "slug": "certifiedorbitsemigroup--11158c030a69b4f3f9d546da",
  "source": {
    "blob": "887f065e8372a2923c5ec8b308543837ebf7ca6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 238,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11158c030a69b4f3f9d546da061923b215576000e00bfee5b06874e58ac12739",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5412a090bc0e1f69e947256cc85a55468bbbe592fd7ef4308d51096210c9057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedOrbitSemigroup
    (H : Type v)
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    (involution : H →L[ℝ] H) where
  step : ℝ → H →L[ℝ] H
  step_zero : step 0 = ContinuousLinearMap.id ℝ H
  step_add :
    ∀ {left right}, 0 ≤ left → 0 ≤ right →
      step (left + right) = (step left).comp (step right)
  contractive :
    ∀ {time}, 0 ≤ time → ∀ state,
      ‖step time state‖ ≤ ‖state‖
  commutes_involution :
    ∀ time,
      (step time).comp involution =
        involution.comp (step time)
  invariantProjector : H →L[ℝ] H
  invariantProjector_idempotent :
    invariantProjector.comp invariantProjector =
      invariantProjector
  fixes_invariant :
    ∀ time state,
      step time (invariantProjector state) =
        invariantProjector state
  equilibrates :
    ∀ state,
      Filter.Tendsto
        (fun time ↦ step time state)
        Filter.atTop
        (nhds (invariantProjector state))
  orbitCertificate : ObjectAddress

/-- One complete finite shell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887f065e8372a2923c5ec8b308543837ebf7ca6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

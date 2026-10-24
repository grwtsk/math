# intervalIntegrable_deriv_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d422bd3b-ef05-fef1-5272-e28fa4afdcf1",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_deriv_of_nonneg",
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
  "slug": "intervalintegrable-deriv-of-nonneg--6fdfdfa48f65d03e1b9e1ac9",
  "source": {
    "blob": "7d35e2d370a83108bc2aeea28317fc627be1e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1256,
    "line": 1243,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fdfdfa48f65d03e1b9e1ac99306805b806d2cd9cfb4ddf9ce8040a8391818c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d422bd3b-ef05-fef1-5272-e28fa4afdcf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1243–1256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_deriv_of_nonneg (hcont : ContinuousOn g (uIcc a b))
    (hderiv : ∀ x ∈ Ioo (min a b) (max a b), HasDerivAt g (g' x) x)
    (hpos : ∀ x ∈ Ioo (min a b) (max a b), 0 ≤ g' x) : IntervalIntegrable g' volume a b := by
  rcases le_total a b with hab | hab
  · simp only [uIcc_of_le, min_eq_left, max_eq_right, hab, IntervalIntegrable, hab,
      Ioc_eq_empty_of_le, integrableOn_empty, and_true] at hcont hderiv hpos ⊢
    exact integrableOn_deriv_of_nonneg hcont hderiv hpos
  · simp only [uIcc_of_ge, min_eq_right, max_eq_left, hab, IntervalIntegrable, Ioc_eq_empty_of_le,
      integrableOn_empty, true_and] at hcont hderiv hpos ⊢
    exact integrableOn_deriv_of_nonneg hcont hderiv hpos

end FTC2

end intervalIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean#L1243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d35e2d370a83108bc2aeea28317fc627be1e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

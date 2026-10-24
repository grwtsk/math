# centeredSource_energy_le_anchor_and_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a65dfc-8330-62fc-abf7-774452eeef88",
  "kind": "theorem",
  "lexical_name": "centeredSource_energy_le_anchor_and_debt",
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
  "slug": "centeredsource-energy-le-anchor-and-debt--15b225f601b1dd0de9affbe2",
  "source": {
    "blob": "9b6da1bebc73d9802cdd9d11177ddacdb2b09f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredAnchorResidualEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15b225f601b1dd0de9affbe25a6b936f053837251f7de06667ff97a61db46f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredAnchorResidualEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a65dfc-8330-62fc-abf7-774452eeef88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredSource_energy_le_anchor_and_debt (X : ℕ) :
    canonicalFourFamilyAmbientSourceEnergy X (canonicalFourFamilyCenteredData X) ≤
      2*canonicalFourFamilyAmbientSourceEnergy X (anchorLift X (correctedAnchorSource X)) +
      2*canonicalFourFamilyAmbientSourceEnergy X (centeredAnchorDebt X) := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  calc
    _ ≤ ∑ F : CanonicalFourFamily, ∑ c ∈ Finset.range (2*X+1),
        (2*(anchorLift X (correctedAnchorSource X) F c)^2 +
         2*(centeredAnchorDebt X F c)^2) := by
      apply Finset.sum_le_sum
      intro F _
      apply Finset.sum_le_sum
      intro c _
      rw [centeredSource_eq_anchor_add_debt X F c]
      nlinarith [sq_nonneg (anchorLift X (correctedAnchorSource X) F c-centeredAnchorDebt X F c)]
    _ = _ := by simp_rw [Finset.sum_add_distrib, ← Finset.mul_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredAnchorResidualEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredAnchorResidualEnergy.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b6da1bebc73d9802cdd9d11177ddacdb2b09f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

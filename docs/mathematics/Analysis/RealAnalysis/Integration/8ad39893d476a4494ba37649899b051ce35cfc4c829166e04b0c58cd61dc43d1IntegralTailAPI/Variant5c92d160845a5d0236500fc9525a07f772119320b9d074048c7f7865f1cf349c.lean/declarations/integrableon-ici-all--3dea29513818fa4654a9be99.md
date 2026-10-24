# integrableOn_Ici_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fc1ea84-2dcc-d2c2-2d17-2d5cb9d24d73",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ici_all",
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
  "slug": "integrableon-ici-all--3dea29513818fa4654a9be99",
  "source": {
    "blob": "0cb8fab5fa02c27b97b431595a927ce33eebc8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dea29513818fa4654a9be99d94926c2a033c49414f793e2f2e46c771504492f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fc1ea84-2dcc-d2c2-2d17-2d5cb9d24d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ici_all {f : ℝ → ℝ} (hc : Continuous f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) : IntegrableOn f (Ici t) := by
  by_cases ht : 0 ≤ t
  · exact hi.mono_set (Ici_subset_Ici.mpr ht)
  · apply ((hc.continuousOn.integrableOn_Icc (a := t) (b := 0)).union hi).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb8fab5fa02c27b97b431595a927ce33eebc8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# range_toLpHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebf2d00f-46ee-c350-0172-15e466517d1a",
  "kind": "theorem",
  "lexical_name": "range_toLpHom",
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
  "slug": "range-tolphom--834edccb5e1f7008548c6ddd",
  "source": {
    "blob": "ea76d7a3150911f8d0fb61fd79d65d943fa87385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:834edccb5e1f7008548c6ddde84354a26276c34543f2a33e9af6a8cc11a2f167",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf2d00f-46ee-c350-0172-15e466517d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_toLpHom [Fact (1 ≤ p)] :
    ((toLpHom p μ).range : AddSubgroup (Lp E p μ)) =
      MeasureTheory.Lp.boundedContinuousFunction E p μ := by
  symm
  exact AddMonoidHom.addSubgroupOf_range_eq_of_le
      ((ContinuousMap.toAEEqFunAddHom μ).comp (toContinuousMapAddMonoidHom α E))
      (by rintro - ⟨f, rfl⟩; exact mem_Lp f : _ ≤ Lp E p μ)

variable (𝕜 : Type*) [Fact (1 ≤ p)] [NormedRing 𝕜] [Module 𝕜 E] [IsBoundedSMul 𝕜 E]

/-- The bounded linear map of considering a bounded continuous function on a finite-measure space
as an element of `Lp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea76d7a3150911f8d0fb61fd79d65d943fa87385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

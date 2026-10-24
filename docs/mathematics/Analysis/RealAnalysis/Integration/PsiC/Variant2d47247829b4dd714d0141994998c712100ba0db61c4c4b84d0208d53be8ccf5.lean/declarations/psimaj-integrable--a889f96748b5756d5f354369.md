# psiMaj_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:199302db-7080-87e1-d3d4-79e41445114b",
  "kind": "theorem",
  "lexical_name": "psiMaj_integrable",
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
  "slug": "psimaj-integrable--a889f96748b5756d5f354369",
  "source": {
    "blob": "8942815d10d4b5f6e37bba5fb2264ca25fc626f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a889f96748b5756d5f3543697fe1822d8aec39ea3f7386337b8846c4a8b2be5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199302db-7080-87e1-d3d4-79e41445114b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiMaj_integrable : Integrable (psiMaj c L w) := by
  have h1 : Integrable ((Icc (-1:ℝ) 1).indicator (fun _ => L)) :=
    (integrable_indicator_iff measurableSet_Icc).mpr (integrableOn_const (by simp))
  have h2 : Integrable ((Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ))) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) one_pos).integrable_indicator measurableSet_Ioi
  have h3 : Integrable (fun r => (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) (-r)) :=
    h2.comp_neg
  exact h1.add ((h2.add h3).const_mul _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8942815d10d4b5f6e37bba5fb2264ca25fc626f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

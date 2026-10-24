# gfunL_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10837e85-17f4-e1fe-feea-31dada3b3173",
  "kind": "lemma",
  "lexical_name": "gfunL_analyticAt",
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
  "slug": "gfunl-analyticat--3b2141a5c1481852014d2b08",
  "source": {
    "blob": "df84b60ef63f254661af9bf8ca502acdb66406a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2141a5c1481852014d2b08deab52552c6e691ade8ad3d65a4b2f9cfff24bab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10837e85-17f4-e1fe-feea-31dada3b3173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gfunL_analyticAt (hχ1 : χ ≠ 1) (c₀ κ u z : ℂ) : AnalyticAt ℂ (gfunL χ c₀ κ u) z := by
  unfold gfunL
  have hL : AnalyticAt ℂ χ.LFunction (c₀ + κ * z) :=
    LFunction_analyticOnNhd hχ1 _ (Set.mem_univ _)
  have haff : AnalyticAt ℂ (fun z : ℂ => c₀ + κ * z) z := by fun_prop
  have hcomp : AnalyticAt ℂ (fun z => χ.LFunction (c₀ + κ * z)) z := hL.comp_of_eq haff rfl
  have hconst : AnalyticAt ℂ (fun _ : ℂ => u) z := analyticAt_const
  exact hcomp.mul hconst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df84b60ef63f254661af9bf8ca502acdb66406a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

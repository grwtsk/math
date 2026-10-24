# count_main_seventh_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:044e4daa-8169-e39c-fa3c-e9781617b833",
  "kind": "theorem",
  "lexical_name": "count_main_seventh_integrable",
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
  "slug": "count-main-seventh-integrable--9055d54e2cb0908065ed89e8",
  "source": {
    "blob": "56f42c36fb0fca00678ad266e553e28e15c066a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9055d54e2cb0908065ed89e870fb27e6c49274c8edcfd7a5a36210584523d828",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044e4daa-8169-e39c-fa3c-e9781617b833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_main_seventh_integrable (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => zeroCountMain t/t^7) (Ioi T) := by
  have hpower : IntegrableOn (fun t : ℝ => 1/t^6) (Ioi T) :=
    inverse_power_integrable 5 (by norm_num) T hT
  have hlog := log_ratio_sixth_integrable T hT
  have hi : IntegrableOn (fun t : ℝ => (1/(2*Real.pi))*(Real.log (t/T)/t^6 +
      (Real.log (T/(2*Real.pi))-1)*(1/t^6))) (Ioi T) :=
    (hlog.add (hpower.const_mul _)).const_mul _
  apply hi.congr_fun _ measurableSet_Ioi
  intro t ht
  exact (count_main_kernel_eq T t hT (hT.trans ht)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variantc44e13f48eda47453e04b940944ba934c244cdfad2270cf41cbbd670b31c5a0d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f42c36fb0fca00678ad266e553e28e15c066a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

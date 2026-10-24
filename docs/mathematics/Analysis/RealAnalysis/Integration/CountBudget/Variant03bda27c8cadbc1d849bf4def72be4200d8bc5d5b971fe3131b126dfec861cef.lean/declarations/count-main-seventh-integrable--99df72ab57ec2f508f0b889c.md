# count_main_seventh_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7491ff5-c827-4bab-92f7-b83d6f703d12",
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
  "slug": "count-main-seventh-integrable--99df72ab57ec2f508f0b889c",
  "source": {
    "blob": "cecdb253bb0c844418c5f46c464d94f69d600d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99df72ab57ec2f508f0b889c9f9cc670ee23fd6c9ddc0cfedd0b676eac573a91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7491ff5-c827-4bab-92f7-b83d6f703d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cecdb253bb0c844418c5f46c464d94f69d600d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

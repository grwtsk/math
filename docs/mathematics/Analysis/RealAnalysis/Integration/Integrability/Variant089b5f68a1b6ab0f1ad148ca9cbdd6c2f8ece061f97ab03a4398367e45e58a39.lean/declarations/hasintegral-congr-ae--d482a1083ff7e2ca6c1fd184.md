# HasIntegral.congr_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "523f90fc960adca33d7cec696a08c7962a71a154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73ee154a-2fb8-0a93-7206-3415fa1b4ad9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4ad7f38-5274-aa3f-4e83-93aa41f23dd1",
  "kind": "theorem",
  "lexical_name": "HasIntegral.congr_ae",
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
  "slug": "hasintegral-congr-ae--d482a1083ff7e2ca6c1fd184",
  "source": {
    "blob": "523f90fc960adca33d7cec696a08c7962a71a154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d482a1083ff7e2ca6c1fd18429015aae95d30c6ac04495f435dddac012d33e2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ad7f38-5274-aa3f-4e83-93aa41f23dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasIntegral.congr_ae {l : IntegrationParams} {I : Box ι} {y : E} {f g : (ι → ℝ) → E}
    {μ : Measure (ι → ℝ)} [IsLocallyFiniteMeasure μ]
    (hf : HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul y) (hfg : f =ᵐ[μ.restrict I] g)
    (hl : l.bRiemann = false) : HasIntegral.{u, v, v} I l g μ.toBoxAdditive.toSMul y := by
  have : g - f =ᵐ[μ.restrict I] 0 := hfg.mono fun x hx => sub_eq_zero.2 hx.symm
  simpa using hf.add (HasIntegral.of_aeEq_zero this hl)
#align box_integral.has_integral.congr_ae BoxIntegral.HasIntegral.congr_ae

end BoxIntegral

namespace MeasureTheory

namespace SimpleFunc

/-- A simple function is McShane integrable w.r.t. any locally finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523f90fc960adca33d7cec696a08c7962a71a154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

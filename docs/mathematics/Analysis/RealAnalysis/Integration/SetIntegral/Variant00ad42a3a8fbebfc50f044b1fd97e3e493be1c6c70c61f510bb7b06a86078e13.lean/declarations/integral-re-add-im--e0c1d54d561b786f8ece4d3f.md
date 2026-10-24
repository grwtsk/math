# integral_re_add_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20505e5b-511d-f152-1d2e-f9a586dbf271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:073c3075-f378-6eec-7f88-988bae1ea2d5",
  "kind": "theorem",
  "lexical_name": "integral_re_add_im",
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
  "slug": "integral-re-add-im--e0c1d54d561b786f8ece4d3f",
  "source": {
    "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1187,
    "line": 1182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c1d54d561b786f8ece4d3f76ba91f385c7e787b502c72e7c1c22071ff51ad2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073c3075-f378-6eec-7f88-988bae1ea2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1182–1187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_re_add_im {f : α → 𝕜} (hf : Integrable f μ) :
    ((∫ x, IsROrC.re (f x) ∂μ : ℝ) : 𝕜) + (∫ x, IsROrC.im (f x) ∂μ : ℝ) * IsROrC.I =
      ∫ x, f x ∂μ := by
  rw [← integral_ofReal, ← integral_ofReal, integral_coe_re_add_coe_im hf]
#align integral_re_add_im integral_re_add_im

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean#L1182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93145a449b40beaf8f7f308cd682cf4c5ffae23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

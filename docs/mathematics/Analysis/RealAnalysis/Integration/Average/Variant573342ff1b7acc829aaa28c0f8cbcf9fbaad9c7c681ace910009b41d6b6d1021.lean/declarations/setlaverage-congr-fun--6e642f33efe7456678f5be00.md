# setLaverage_congr_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c79ccdb-a294-defd-c9dc-61fda243c36e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35b808aa-cbb5-0946-2db5-b7768955cf3e",
  "kind": "theorem",
  "lexical_name": "setLaverage_congr_fun",
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
  "slug": "setlaverage-congr-fun--6e642f33efe7456678f5be00",
  "source": {
    "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e642f33efe7456678f5be0051dd0ad789b289d44f4f3d06173a72550d5fc339",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b808aa-cbb5-0946-2db5-b7768955cf3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLaverage_congr_fun (hs : MeasurableSet s) (h : ∀ᵐ x ∂μ, x ∈ s → f x = g x) :
    ⨍⁻ x in s, f x ∂μ = ⨍⁻ x in s, g x ∂μ := by
  simp only [laverage_eq, set_lintegral_congr_fun hs h]
#align measure_theory.set_laverage_congr_fun MeasureTheory.setLaverage_congr_fun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9699ea9a856790438cc83928cc85a500e9bdbb55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

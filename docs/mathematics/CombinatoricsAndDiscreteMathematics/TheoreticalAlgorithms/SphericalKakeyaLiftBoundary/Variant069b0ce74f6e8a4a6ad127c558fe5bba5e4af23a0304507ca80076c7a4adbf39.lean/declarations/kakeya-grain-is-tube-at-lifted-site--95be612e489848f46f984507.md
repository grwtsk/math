# kakeya_grain_is_tube_at_lifted_site

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b92293af7a14a1f69e09f58e2135424ba91d48e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c443b88-8de5-13ab-ea48-cec5e39b8a3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f61de98-e9ef-80d0-1833-327c1fbd7ac7",
  "kind": "theorem",
  "lexical_name": "kakeya_grain_is_tube_at_lifted_site",
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
  "slug": "kakeya-grain-is-tube-at-lifted-site--95be612e489848f46f984507",
  "source": {
    "blob": "b92293af7a14a1f69e09f58e2135424ba91d48e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 539,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95be612e489848f46f984507a5551ca94a987fabdc5c20705e91aa9601caf07b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f61de98-e9ef-80d0-1833-327c1fbd7ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kakeya_grain_is_tube_at_lifted_site :
    (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).basePoint =
        (sphericalLiftSite positiveSphericalSite).point ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).direction.scatterOutput =
        ScatteringProgression.positive_progression ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).orientedTubeAroundSphericalLift =
        true ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).kakeyaTheoremClaim =
        false := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92293af7a14a1f69e09f58e2135424ba91d48e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

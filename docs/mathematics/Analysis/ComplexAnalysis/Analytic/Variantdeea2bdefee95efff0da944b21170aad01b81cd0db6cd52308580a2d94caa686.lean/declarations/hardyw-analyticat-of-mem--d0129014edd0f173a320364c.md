# hardyW_analyticAt_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9324b73-392f-0275-ec56-d484d1ed8f0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0f8fe2a-f97f-60ba-748f-a8f55ba022f2",
  "kind": "theorem",
  "lexical_name": "hardyW_analyticAt_of_mem",
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
  "slug": "hardyw-analyticat-of-mem--d0129014edd0f173a320364c",
  "source": {
    "blob": "1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 242,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0129014edd0f173a320364c7dd1c67ac84427efd998123838e5e7dd3a1e8987",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f8fe2a-f97f-60ba-748f-a8f55ba022f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_analyticAt_of_mem {s : ℂ} (hs : s ∈ stripReg) : AnalyticAt ℂ hardyW s :=
  hardyW_analyticAt' hs.2.2.2 (Gammaℝ_one_sub_ne_zero_of_re hs.2.1 hs.2.2.2) (Gammaℝ_ne_zero_of_re hs.1 hs.2.2.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

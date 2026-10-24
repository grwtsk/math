# occurrence_sourceMass_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10a064729fda5c9e85eaa0eb07e3276ef61be498",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4be9c1f8-4a8e-f55d-468e-a84a1ed51bc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d6058c8-2532-3b6d-f0a7-cd09224aabbe",
  "kind": "theorem",
  "lexical_name": "occurrence_sourceMass_floor",
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
  "slug": "occurrence-sourcemass-floor--7c709e7a56b84dedd713226d",
  "source": {
    "blob": "10a064729fda5c9e85eaa0eb07e3276ef61be498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActualCheck/Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c709e7a56b84dedd713226d7c4e14b8f100049b673f86e07e9dde9ec1383070",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActualCheck/Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d6058c8-2532-3b6d-f0a7-cd09224aabbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActualCheck/Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActualCheck/Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10a064729fda5c9e85eaa0eb07e3276ef61be498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

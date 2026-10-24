# sourceCorrelation_deviation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96082fe0a63c4621c9cc52ae32cdffebc40aab86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb2c700f-218c-d658-1deb-79c8aaef1189",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e69eb3a-76b8-0a1b-84be-6c01a6c43593",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deviation_bound",
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
  "slug": "sourcecorrelation-deviation-bound--c676d481772e22e79be7d5ab",
  "source": {
    "blob": "96082fe0a63c4621c9cc52ae32cdffebc40aab86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviation/Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c676d481772e22e79be7d5ab2321f4a22ecb1b4406a311459ea1fc58e4bf1947",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationDeviation/Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e69eb3a-76b8-0a1b-84be-6c01a6c43593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deviation_bound (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  by_cases ht : 0 ≤ t
  · exact sourceCorrelation_deviation_bound_nonneg A t hA ht
  · have h := sourceCorrelation_deviation_bound_nonneg A (-t) hA (by linarith)
    simpa only [sourceCorrelation_even A t, neg_sq] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationDeviation/Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviation/Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96082fe0a63c4621c9cc52ae32cdffebc40aab86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

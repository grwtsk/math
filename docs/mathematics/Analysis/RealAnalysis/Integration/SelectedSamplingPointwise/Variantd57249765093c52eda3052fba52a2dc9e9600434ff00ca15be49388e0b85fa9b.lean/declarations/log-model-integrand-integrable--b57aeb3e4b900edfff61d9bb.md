# log_model_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a40c318-994b-ae98-6993-5ff474fd45a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eadb56f7-cf18-1343-fa60-8ae8f4bad61b",
  "kind": "theorem",
  "lexical_name": "log_model_integrand_integrable",
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
  "slug": "log-model-integrand-integrable--b57aeb3e4b900edfff61d9bb",
  "source": {
    "blob": "35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57aeb3e4b900edfff61d9bb195d50e4548366cd391f60fef2490702aa33a927",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eadb56f7-cf18-1343-fa60-8ae8f4bad61b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_model_integrand_integrable (A k : ℝ) :
    IntegrableOn (fun u ↦ Int.fract u * logModelDerivative A k u) (Ioi (0 : ℝ)) := by
  rw [log_model_integrand_eq]
  exact ((((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)).add
      ((coefficientWeight_integrable 2).const_mul _)).const_mul _

/-- The plain model integrates to the specified universal-coefficient main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

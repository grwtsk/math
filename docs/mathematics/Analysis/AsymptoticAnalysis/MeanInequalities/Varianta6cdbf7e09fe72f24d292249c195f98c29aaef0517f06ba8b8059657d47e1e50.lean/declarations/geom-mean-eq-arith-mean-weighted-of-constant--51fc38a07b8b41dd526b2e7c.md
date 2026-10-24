# geom_mean_eq_arith_mean_weighted_of_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5098639b-c432-63e5-39c5-b79f86633328",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b3b7f29-0d3c-ba54-3834-3dc00f4e7c5d",
  "kind": "theorem",
  "lexical_name": "geom_mean_eq_arith_mean_weighted_of_constant",
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
  "slug": "geom-mean-eq-arith-mean-weighted-of-constant--51fc38a07b8b41dd526b2e7c",
  "source": {
    "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fc38a07b8b41dd526b2e7ca43c0af39c7bd1e4e5eb422aabfba92d9ab19468",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3b7f29-0d3c-ba54-3834-3dc00f4e7c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_eq_arith_mean_weighted_of_constant (w z : ι → ℝ) (x : ℝ) (hw : ∀ i ∈ s, 0 ≤ w i)
    (hw' : ∑ i in s, w i = 1) (hz : ∀ i ∈ s, 0 ≤ z i) (hx : ∀ i ∈ s, w i ≠ 0 → z i = x) :
    ∏ i in s, z i ^ w i = ∑ i in s, w i * z i := by
  rw [geom_mean_weighted_of_constant, arith_mean_weighted_of_constant] <;> assumption
#align real.geom_mean_eq_arith_mean_weighted_of_constant Real.geom_mean_eq_arith_mean_weighted_of_constant

end Real

namespace NNReal

/-- The geometric mean is less than or equal to the arithmetic mean, weighted version
for `NNReal`-valued functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb832774232101bddaad4985ac7ca896646bb97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

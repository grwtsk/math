# inner_le_Lp_mul_Lq_tsum_of_nonneg'

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
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5058f998-89c8-2e14-c5b3-bbfdfe24a823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38bf255f-d123-0be9-bdf2-5ac1182fdd29",
  "kind": "theorem",
  "lexical_name": "inner_le_Lp_mul_Lq_tsum_of_nonneg'",
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
  "slug": "inner-le-lp-mul-lq-tsum-of-nonneg--3cf88c9a39db8ae5e1467254",
  "source": {
    "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 622,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cf88c9a39db8ae5e146725487bfbea40e3aa3dc4302fe583b1d204dc0e4105e",
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

Occurrence: `result:38bf255f-d123-0be9-bdf2-5ac1182fdd29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_le_Lp_mul_Lq_tsum_of_nonneg' (hpq : p.IsConjugateExponent q) (hf : ∀ i, 0 ≤ f i)
    (hg : ∀ i, 0 ≤ g i) (hf_sum : Summable fun i => f i ^ p) (hg_sum : Summable fun i => g i ^ q) :
    ∑' i, f i * g i ≤ (∑' i, f i ^ p) ^ (1 / p) * (∑' i, g i ^ q) ^ (1 / q) :=
  (inner_le_Lp_mul_Lq_tsum_of_nonneg hpq hf hg hf_sum hg_sum).2
#align real.inner_le_Lp_mul_Lq_tsum_of_nonneg' Real.inner_le_Lp_mul_Lq_tsum_of_nonneg'

/-- Hölder inequality: the scalar product of two functions is bounded by the product of their
`L^p` and `L^q` norms when `p` and `q` are conjugate exponents. A version for `NNReal`-valued
functions. For an alternative version, convenient if the infinite sums are not already expressed as
`p`-th powers, see `inner_le_Lp_mul_Lq_tsum_of_nonneg`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb832774232101bddaad4985ac7ca896646bb97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

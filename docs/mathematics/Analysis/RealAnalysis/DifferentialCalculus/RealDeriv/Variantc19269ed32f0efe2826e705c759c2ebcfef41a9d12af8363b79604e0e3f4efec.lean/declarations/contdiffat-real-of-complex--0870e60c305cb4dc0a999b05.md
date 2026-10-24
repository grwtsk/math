# ContDiffAt.real_of_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cafb47cfb5dc70f36a00fd903125a4ed08a6fbf9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:179b67cd-3fb1-f3df-8eef-29dd7b697d4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdd38944-a1f5-cb61-0c86-4d893e815b8f",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.real_of_complex",
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
  "slug": "contdiffat-real-of-complex--0870e60c305cb4dc0a999b05",
  "source": {
    "blob": "cafb47cfb5dc70f36a00fd903125a4ed08a6fbf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0870e60c305cb4dc0a999b0525c0988379865a636b44c34c1b728217b4d80ee9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd38944-a1f5-cb61-0c86-4d893e815b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.real_of_complex {n : ℕ∞} (h : ContDiffAt ℂ n e z) :
    ContDiffAt ℝ n (fun x : ℝ => (e x).re) z := by
  have A : ContDiffAt ℝ n ((↑) : ℝ → ℂ) z := ofRealClm.contDiff.contDiffAt
  have B : ContDiffAt ℝ n e z := h.restrict_scalars ℝ
  have C : ContDiffAt ℝ n re (e z) := reClm.contDiff.contDiffAt
  exact C.comp z (B.comp z A)
#align cont_diff_at.real_of_complex ContDiffAt.real_of_complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cafb47cfb5dc70f36a00fd903125a4ed08a6fbf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# norm_sub_center_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42f9e1e712587991f2b9ea6e8edf074c9055375c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:489be66f-a22c-1639-3827-192d68ad61bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13af80cb-3cc0-b123-2f2d-3ec89a415502",
  "kind": "lemma",
  "lexical_name": "norm_sub_center_le",
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
  "slug": "norm-sub-center-le--d145aec13827a591d135fb2b",
  "source": {
    "blob": "42f9e1e712587991f2b9ea6e8edf074c9055375c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d145aec13827a591d135fb2b0a50f2f32c688e3bd1416eb6210d36021669f9bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13af80cb-3cc0-b123-2f2d-3ec89a415502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_center_le {ρ : ℂ} {t : ℝ} (h1 : 0 < ρ.re) (h2 : ρ.re < 1) (h3 : t < ρ.im)
    (h4 : ρ.im ≤ t + 1) : ‖ρ - (2 + t * I)‖ ≤ 3 := by
  refine (Complex.norm_le_abs_re_add_abs_im _).trans ?_
  have hre : (ρ - (2 + t * I)).re = ρ.re - 2 := by simp
  have him : (ρ - (2 + t * I)).im = ρ.im - t := by simp
  rw [hre, him, abs_of_neg (by linarith), abs_of_pos (by linarith)]
  linarith



/-- zeros with β ≥ 1/2 in the window (t, t+1], with multiplicity, as a real number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f9e1e712587991f2b9ea6e8edf074c9055375c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

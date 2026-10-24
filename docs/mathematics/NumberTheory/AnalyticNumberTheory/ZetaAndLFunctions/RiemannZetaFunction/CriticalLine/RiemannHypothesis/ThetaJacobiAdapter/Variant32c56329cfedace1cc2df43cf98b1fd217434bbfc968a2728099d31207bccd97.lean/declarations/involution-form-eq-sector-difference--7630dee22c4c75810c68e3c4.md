# involution_form_eq_sector_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9a2e1c84b9c549ce04477c6829328c1d99ec7e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed3a4489-d498-428b-11c6-97c93934b147",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe71073b-0c92-4d95-0dcc-eb51b1e91a99",
  "kind": "theorem",
  "lexical_name": "involution_form_eq_sector_difference",
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
  "slug": "involution-form-eq-sector-difference--7630dee22c4c75810c68e3c4",
  "source": {
    "blob": "e9a2e1c84b9c549ce04477c6829328c1d99ec7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7630dee22c4c75810c68e3c45619387fae679e0625b24c24b5fb49e106f67913",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe71073b-0c92-4d95-0dcc-eb51b1e91a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem involution_form_eq_sector_difference (G : PositiveForm V)
    (J : Module.End ℝ V) (hJ : ∀ x, J (J x) = x)
    (x : V) :
    G.form x (J x) =
      G.form (involutionPlus J x) (involutionPlus J x) -
        G.form (involutionMinus J x) (involutionMinus J x) := by
  have hneg (a b : V) : G.form a (-b) = -G.form a b := by
    simpa using G.smul_right (-1 : ℝ) a b
  have hdecomp := involution_projection_decomposition J x
  conv_lhs => rw [← hdecomp]
  rw [map_add, involution_on_plus J hJ, involution_on_minus J hJ]
  simp only [G.add_left, G.add_right, hneg]
  rw [G.symmetric (involutionMinus J x) (involutionPlus J x)]
  ring

/-- On a nonnull negative sector the involution form is strictly negative,
despite positivity of the magnitude geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9a2e1c84b9c549ce04477c6829328c1d99ec7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

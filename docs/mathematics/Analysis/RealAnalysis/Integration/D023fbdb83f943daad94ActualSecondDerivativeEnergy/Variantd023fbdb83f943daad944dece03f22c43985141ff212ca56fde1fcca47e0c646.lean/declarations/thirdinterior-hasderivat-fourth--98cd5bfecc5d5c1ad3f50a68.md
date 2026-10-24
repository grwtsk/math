# thirdInterior_hasDerivAt_fourth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0ab42402b303a3385fbdb0f1d243de40544c08e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b194bf6-acfb-c83c-8a5c-efa514861e9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7edc5c37-bddf-d9c0-893d-9168badabcdf",
  "kind": "theorem",
  "lexical_name": "thirdInterior_hasDerivAt_fourth",
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
  "slug": "thirdinterior-hasderivat-fourth--98cd5bfecc5d5c1ad3f50a68",
  "source": {
    "blob": "e0ab42402b303a3385fbdb0f1d243de40544c08e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98cd5bfecc5d5c1ad3f50a68b1bf04e393d57609a22cd0139244f19b573c44c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7edc5c37-bddf-d9c0-893d-9168badabcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thirdInterior_hasDerivAt_fourth (A x : ℝ) :
    HasDerivAt (thirdInterior A) (fourthInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have hd := (((hy.const_mul 144).sub ((hy.pow 3).const_mul 480)).add
    ((hy.pow 5).const_mul 336)).div_const (A ^ 3 * Real.sqrt A)
  convert hd using 1 <;> try rfl
  unfold fourthInterior unitFourth
  simp only [div_eq_mul_inv, mul_inv_rev, id_eq]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0ab42402b303a3385fbdb0f1d243de40544c08e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

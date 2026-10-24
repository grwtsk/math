# norm_fourierSMulRight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e339b42-50d9-a0b7-90b9-07b6f3abe9b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ca7137c-ecde-98bd-808b-a1fd5a668554",
  "kind": "lemma",
  "lexical_name": "norm_fourierSMulRight_le",
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
  "slug": "norm-fouriersmulright-le--994cf0e8b2430f2a6d9e23c4",
  "source": {
    "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:994cf0e8b2430f2a6d9e23c4b7350e9b3b97e1b977a739bbe3a6e56b9fb12b48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ca7137c-ecde-98bd-808b-a1fd5a668554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_fourierSMulRight_le (L : V →L[ℝ] W →L[ℝ] ℝ) (f : V → E) (v : V) :
    ‖fourierSMulRight L f v‖ ≤ 2 * π * ‖L‖ * ‖v‖ * ‖f v‖ := calc
  ‖fourierSMulRight L f v‖ = (2 * π) * ‖L v‖ * ‖f v‖ := norm_fourierSMulRight _ _ _
  _ ≤ (2 * π) * (‖L‖ * ‖v‖) * ‖f v‖ := by gcongr; exact L.le_opNorm _
  _ = 2 * π * ‖L‖ * ‖v‖ * ‖f v‖ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54260b884936c9479ca6a212d8b1c2bb8f4db37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

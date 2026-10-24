# denom_cocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39084e4f4ae97c9dc588675a4f50607fdeffcddc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eeecb66-66b2-a18e-8226-f12e533ad625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0920d18a-0ae8-68ec-9e37-276f28812b9d",
  "kind": "lemma",
  "lexical_name": "denom_cocycle",
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
  "slug": "denom-cocycle--111cb732f6b7748a718ed155",
  "source": {
    "blob": "39084e4f4ae97c9dc588675a4f50607fdeffcddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:111cb732f6b7748a718ed155d8abe66060a63a610a1e7c4ece89337649a95bfb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0920d18a-0ae8-68ec-9e37-276f28812b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denom_cocycle (g h : GL (Fin 2) ℝ) {z : ℂ} (hz : z.im ≠ 0) :
    denom (g * h) z = denom g (num h z / denom h z) * denom h z := by
  change _ = (_ * (_ / _) + _) * _
  field_simp [denom_ne_zero_of_im h hz]
  simp only [denom, Units.val_mul, mul_apply, Fin.sum_univ_succ, Finset.univ_unique,
    Fin.default_eq_zero, Finset.sum_singleton, Fin.succ_zero_eq_one, Complex.ofReal_add,
    Complex.ofReal_mul, num]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39084e4f4ae97c9dc588675a4f50607fdeffcddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

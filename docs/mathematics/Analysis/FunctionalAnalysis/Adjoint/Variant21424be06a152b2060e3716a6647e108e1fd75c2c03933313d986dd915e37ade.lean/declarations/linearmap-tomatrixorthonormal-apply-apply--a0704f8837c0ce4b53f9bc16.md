# LinearMap.toMatrixOrthonormal_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1821f6d27c6bfecc790c75b5888a36cf4a69b0e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 584,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ba299a6-698e-74dd-ddc4-d070aadad94d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b84567b3-b08c-5037-7cf5-480745d96c05",
  "kind": "lemma",
  "lexical_name": "LinearMap.toMatrixOrthonormal_apply_apply",
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
  "slug": "linearmap-tomatrixorthonormal-apply-apply--a0704f8837c0ce4b53f9bc16",
  "source": {
    "blob": "1821f6d27c6bfecc790c75b5888a36cf4a69b0e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 584,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0704f8837c0ce4b53f9bc16ded4eb32e76bd50530de9a4ff36a15a8d09beb8a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Adjoint/Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84567b3-b08c-5037-7cf5-480745d96c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.toMatrixOrthonormal_apply_apply (f : E →ₗ[𝕜] E) (i j : n) :
    toMatrixOrthonormal v₁ f i j = ⟪v₁ i, f (v₁ j)⟫_𝕜 :=
  calc
    _ = v₁.repr (f (v₁ j)) i := f.toMatrix_apply ..
    _ = ⟪v₁ i, f (v₁ j)⟫_𝕜 := v₁.repr_apply_apply ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Adjoint/Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1821f6d27c6bfecc790c75b5888a36cf4a69b0e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

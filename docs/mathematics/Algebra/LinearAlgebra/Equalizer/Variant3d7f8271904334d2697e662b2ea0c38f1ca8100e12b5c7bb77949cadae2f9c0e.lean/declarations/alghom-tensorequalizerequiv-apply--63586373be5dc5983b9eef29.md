# AlgHom.tensorEqualizerEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2693670d-9a0f-2bd5-3b5c-62d3014315f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc50c4a3-d24b-81e4-a581-b6a95c809543",
  "kind": "lemma",
  "lexical_name": "AlgHom.tensorEqualizerEquiv_apply",
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
  "slug": "alghom-tensorequalizerequiv-apply--63586373be5dc5983b9eef29",
  "source": {
    "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 298,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63586373be5dc5983b9eef29b97e1579bcb0752541cb9f64d4591ca56a509bd0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc50c4a3-d24b-81e4-a581-b6a95c809543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AlgHom.tensorEqualizerEquiv_apply [Module.Flat R T]
    (x : T ⊗[R] AlgHom.equalizer f g) :
    AlgHom.tensorEqualizerEquiv S T f g x = AlgHom.tensorEqualizer S T f g x :=
  rfl

variable (R A) in
attribute [local instance] Algebra.TensorProduct.rightAlgebra in
/--
Given a surjection of `R`-algebras `S → T` with kernel `I`, such that `T` is flat,
the kernel of the map `A ⊗ S → A ⊗ T` is the base change of `I` along `S → A ⊗ S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ee1cdddfba10606249558bc7e1b9babe3f0bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

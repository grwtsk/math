# _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.LinearIndependent.tmul_of_flat_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5994eb0f-ffe7-1cf4-4a08-d01e55293d7a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.LinearIndependent.tmul_of_flat_right",
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
  "slug": "root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari--f55a9659b49e821ca00967e6",
  "source": {
    "blob": "52bcbcc53017e5d1123bc8b382b329968c20cebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 548,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5ae03056f3fb7aec90bd00c69575aeee66344c3605533d7f80a03465143cdc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55a9659b49e821ca00967e6e4274e733776978eb8ad4e4af4a8bbd57759cd57",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5ae03056f3fb7aec90bd00c69575aeee66344c3605533d7f80a03465143cdc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5994eb0f-ffe7-1cf4-4a08-d01e55293d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.LinearIndependent.tmul_of_flat_right [Module.Flat R N] (hv : LinearIndependent R v)
    (hw : LinearIndependent R w) : LinearIndependent R fun i : ι × κ ↦ v i.1 ⊗ₜ[R] w i.2 :=
  (((TensorProduct.comm R N M).toLinearMap.linearIndependent_iff_of_injOn
    (TensorProduct.comm R N M).injective.injOn).mpr
      (hw.tmul_of_flat_left hv)).comp Prod.swap Prod.swap_bijective.injective

/-- Tensor product of linearly independent families is linearly
independent under some flatness conditions.

The flatness condition could be removed over domains.
See `LinearIndepOn.tmul_of_isDomain`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5ae03056f3fb7aec90bd00c69575aeee66344c3605533d7f80a03465143cdc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5ae03056f3fb7aec90bd00c69575aeee66344c3605533d7f80a03465143cdc29.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52bcbcc53017e5d1123bc8b382b329968c20cebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

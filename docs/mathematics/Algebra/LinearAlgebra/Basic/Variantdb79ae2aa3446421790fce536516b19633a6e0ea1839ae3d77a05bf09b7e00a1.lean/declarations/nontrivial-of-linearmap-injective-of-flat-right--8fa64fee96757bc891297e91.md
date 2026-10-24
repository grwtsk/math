# nontrivial_of_linearMap_injective_of_flat_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d2e40a339e1ae5bed9633222717f893e6e03989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35312cc0-284f-b944-a992-cd555940ca74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce61a50a-5691-251b-3736-c4506ed2a3df",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_linearMap_injective_of_flat_right",
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
  "slug": "nontrivial-of-linearmap-injective-of-flat-right--8fa64fee96757bc891297e91",
  "source": {
    "blob": "2d2e40a339e1ae5bed9633222717f893e6e03989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 479,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa64fee96757bc891297e91206cfdd84042a722435f3aa4378a3909765470c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce61a50a-5691-251b-3736-c4506ed2a3df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_linearMap_injective_of_flat_right (f : R →ₗ[R] M) (h : Function.Injective f)
    [Module.Flat R N] [Nontrivial N] : Nontrivial (M ⊗[R] N) :=
  Module.Flat.rTensor_preserves_injective_linearMap (M := N) f h |>.comp
    (TensorProduct.lid R N).symm.injective |>.nontrivial

variable {R M N}
variable {P Q : Type*} [AddCommMonoid P] [Module R P] [AddCommMonoid Q] [Module R Q]

/-- Tensor product of injective maps are injective under some flatness conditions.
Also see `TensorProduct.map_injective_of_flat_flat'` and
`TensorProduct.map_injective_of_flat_flat_of_isDomain` for different flatness conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2e40a339e1ae5bed9633222717f893e6e03989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

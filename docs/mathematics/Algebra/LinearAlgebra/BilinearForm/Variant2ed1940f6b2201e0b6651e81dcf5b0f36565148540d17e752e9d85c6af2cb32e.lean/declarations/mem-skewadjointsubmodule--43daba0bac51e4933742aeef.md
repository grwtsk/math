# mem_skewAdjointSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd8b891d311080667e5d6b4a9b7587000b5d0aee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ed1940f6b2201e0b6651e81dcf5b0f36565148540d17e752e9d85c6af2cb32e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edd57fd2-6db1-6fbd-90d4-aabfc6fe1a00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b6ae3c-ca01-bac1-3716-d03d7e411bbf",
  "kind": "theorem",
  "lexical_name": "mem_skewAdjointSubmodule",
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
  "slug": "mem-skewadjointsubmodule--43daba0bac51e4933742aeef",
  "source": {
    "blob": "dd8b891d311080667e5d6b4a9b7587000b5d0aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1186,
    "line": 1166,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant2ed1940f6b2201e0b6651e81dcf5b0f36565148540d17e752e9d85c6af2cb32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43daba0bac51e4933742aeef88d07b8260cb750ce4f3c7acb3672ec5357f0146",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant2ed1940f6b2201e0b6651e81dcf5b0f36565148540d17e752e9d85c6af2cb32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b6ae3c-ca01-bac1-3716-d03d7e411bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1166–1186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_skewAdjointSubmodule (f : Module.End R₃ M₃) :
    f ∈ B₃.skewAdjointSubmodule ↔ B₃.IsSkewAdjoint f := by
  rw [isSkewAdjoint_iff_neg_self_adjoint]
  exact Iff.rfl
#align bilin_form.mem_skew_adjoint_submodule BilinForm.mem_skewAdjointSubmodule

end LinearAdjoints

end BilinForm

namespace BilinForm

section Orthogonal

/-- The orthogonal complement of a submodule `N` with respect to some bilinear form is the set of
elements `x` which are orthogonal to all elements of `N`; i.e., for all `y` in `N`, `B x y = 0`.

Note that for general (neither symmetric nor antisymmetric) bilinear forms this definition has a
chirality; in addition to this "left" orthogonal complement one could define a "right" orthogonal
complement for which, for all `y` in `N`, `B y x = 0`.  This variant definition is not currently
provided in mathlib. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant2ed1940f6b2201e0b6651e81dcf5b0f36565148540d17e752e9d85c6af2cb32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant2ed1940f6b2201e0b6651e81dcf5b0f36565148540d17e752e9d85c6af2cb32e.lean#L1166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8b891d311080667e5d6b4a9b7587000b5d0aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

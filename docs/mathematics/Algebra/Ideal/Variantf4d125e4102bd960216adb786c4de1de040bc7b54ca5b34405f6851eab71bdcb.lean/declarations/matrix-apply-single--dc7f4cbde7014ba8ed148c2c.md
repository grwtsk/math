# matrix_apply_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebd124cb-6530-db3e-5eb1-7ca43ddfe6be",
  "kind": "theorem",
  "lexical_name": "matrix_apply_single",
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
  "slug": "matrix-apply-single--dc7f4cbde7014ba8ed148c2c",
  "source": {
    "blob": "9bcfac27d3db6afb924485e69be35aa6c20bdcd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc7f4cbde7014ba8ed148c2cc71a5866d43a3982a32b09d916e8025bda269fd4",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd124cb-6530-db3e-5eb1-7ca43ddfe6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_apply_single [DecidableEq n] {c : RingCon R} {i j : n} {x y : R} :
    c.matrix n (Matrix.single i j x) (Matrix.single i j y) ↔ c x y := by
  refine ⟨fun h ↦ by simpa using h i j, fun h i' j' ↦ ?_⟩
  obtain hi | rfl := ne_or_eq i i'
  · simpa [hi] using c.refl 0
  obtain hj | rfl := ne_or_eq j j'
  · simpa [hj] using c.refl _
  simpa using h

@[deprecated (since := "2025-05-05")] alias matrix_apply_stdBasisMatrix := matrix_apply_single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bcfac27d3db6afb924485e69be35aa6c20bdcd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

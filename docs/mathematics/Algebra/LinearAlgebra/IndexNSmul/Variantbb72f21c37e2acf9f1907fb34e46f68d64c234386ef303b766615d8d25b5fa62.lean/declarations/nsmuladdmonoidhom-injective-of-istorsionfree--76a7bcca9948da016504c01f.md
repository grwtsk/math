# nsmulAddMonoidHom_injective_of_isTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fa3168bf3aac31fce0f593b4d93b730843f2ef2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b89e1de4-35e5-b09f-f433-657eb0a6274a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73109595-c1eb-f38a-3a61-76058f2d2711",
  "kind": "lemma",
  "lexical_name": "nsmulAddMonoidHom_injective_of_isTorsionFree",
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
  "slug": "nsmuladdmonoidhom-injective-of-istorsionfree--76a7bcca9948da016504c01f",
  "source": {
    "blob": "1fa3168bf3aac31fce0f593b4d93b730843f2ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a7bcca9948da016504c01f3c9498cb8a78f684ead2c43d05eb45d6db5905e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73109595-c1eb-f38a-3a61-76058f2d2711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nsmulAddMonoidHom_injective_of_isTorsionFree [IsTorsionFree ℤ M] {n : ℕ} (hn : n ≠ 0) :
    Function.Injective (nsmulAddMonoidHom (α := M) n) :=
  (AddMonoidHom.ker_eq_bot_iff _).mp <| (eq_bot_iff_forall _).mpr fun x hx ↦ by simp_all

/-- If `A` is a subgroup of finite index of an additive group `M` that is finitely generated
and torsion-free as a `ℤ`-module, then `A` and `M` have the same rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa3168bf3aac31fce0f593b4d93b730843f2ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

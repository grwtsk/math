# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63e0915a392dbdadd08df816094e9d114c84700d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18a9fbaa-39e0-be8e-7913-1bd0bad95e59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2b599d9-82f6-f7a4-5a42-f077f5fb280e",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--be0f2bafedae405540c93c6f",
  "source": {
    "blob": "63e0915a392dbdadd08df816094e9d114c84700d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 553,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be0f2bafedae405540c93c6f5bc9242bad7099d191dda4e2194c9b5209591e74",
  "verification": {
    "reference": "docs/verification/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2b599d9-82f6-f7a4-5a42-f077f5fb280e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction {C : FreeAlgebra R X → Prop}
    (h_grade0 : ∀ r, C (algebraMap R (FreeAlgebra R X) r)) (h_grade1 : ∀ x, C (ι R x))
    (h_mul : ∀ a b, C a → C b → C (a * b)) (h_add : ∀ a b, C a → C b → C (a + b))
    (a : FreeAlgebra R X) : C a := by
  -- the arguments are enough to construct a subalgebra, and a mapping into it from X
  let s : Subalgebra R (FreeAlgebra R X) :=
    { carrier := C
      mul_mem' := h_mul _ _
      add_mem' := h_add _ _
      algebraMap_mem' := h_grade0 }
  let of : X → s := Subtype.coind (ι R) h_grade1
  -- the mapping through the subalgebra is the identity
  have of_id : AlgHom.id R (FreeAlgebra R X) = s.val.comp (lift R of) := by
    ext
    simp [Subtype.coind]
  -- finding a proof is finding an element of the subalgebra
  suffices : a = lift R of a
  · rw [this]
    exact Subtype.prop (lift R of a)
  simp [AlgHom.ext_iff] at of_id
  exact of_id a
#align free_algebra.induction FreeAlgebra.induction

end FreeAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e0915a392dbdadd08df816094e9d114c84700d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

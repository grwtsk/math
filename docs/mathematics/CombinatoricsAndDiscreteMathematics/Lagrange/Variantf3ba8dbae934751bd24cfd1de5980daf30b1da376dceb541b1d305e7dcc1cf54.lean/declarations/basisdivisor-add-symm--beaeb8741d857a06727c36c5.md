# basisDivisor_add_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f37b87e2-80f1-a5df-d329-4a6bb27afafd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa04caa2-4b7f-43f2-b9ae-3c1f8f151a16",
  "kind": "theorem",
  "lexical_name": "basisDivisor_add_symm",
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
  "slug": "basisdivisor-add-symm--beaeb8741d857a06727c36c5",
  "source": {
    "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beaeb8741d857a06727c36c5e0d08e7ba8591c382ef1c657bc2ccb8675587044",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa04caa2-4b7f-43f2-b9ae-3c1f8f151a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basisDivisor_add_symm {x y : F} (hxy : x ≠ y) :
    basisDivisor x y + basisDivisor y x = 1 := by
  classical rw [
    ← sum_basis (Set.injOn_of_injective Function.injective_id _) ⟨x, mem_insert_self _ {y}⟩,
    sum_insert (not_mem_singleton.mpr hxy), sum_singleton, basis_pair_left hxy,
    basis_pair_right hxy, id, id]
#align lagrange.basis_divisor_add_symm Lagrange.basisDivisor_add_symm

end Basis

section Interpolate

open Finset

variable {ι : Type*} [DecidableEq ι] {s t : Finset ι} {i j : ι} {v : ι → F} (r r' : ι → F)

/-- Lagrange interpolation: given a finset `s : Finset ι`, a nodal map `v : ι → F` injective on
`s` and a value function `r : ι → F`, `interpolate s v r` is the unique
polynomial of degree `< s.card` that takes value `r i` on `v i` for all `i` in `s`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0507f8cfc109876f1c55fd293eb5667198b30ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

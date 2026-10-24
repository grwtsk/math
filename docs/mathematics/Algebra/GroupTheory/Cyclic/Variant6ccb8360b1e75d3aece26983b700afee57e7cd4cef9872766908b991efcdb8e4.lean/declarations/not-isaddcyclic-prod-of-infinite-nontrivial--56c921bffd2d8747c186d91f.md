# not_isAddCyclic_prod_of_infinite_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 898,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6acbd80-9463-ceea-46c1-3ebf88dc9f89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fdd60ee-1ccc-7399-baab-64af7ffff59c",
  "kind": "theorem",
  "lexical_name": "not_isAddCyclic_prod_of_infinite_nontrivial",
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
  "slug": "not-isaddcyclic-prod-of-infinite-nontrivial--56c921bffd2d8747c186d91f",
  "source": {
    "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 898,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c921bffd2d8747c186d91fd9a1a597d96e6e0e82850923e85280555f026ba2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fdd60ee-1ccc-7399-baab-64af7ffff59c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isAddCyclic_prod_of_infinite_nontrivial (M N : Type*) [AddGroup M] [AddGroup N]
    [Infinite M] [Nontrivial N] : ¬ IsAddCyclic (M × N) := fun hMN ↦ by
  rw [← ((zmodAddCyclicAddEquiv <| isAddCyclic_left_of_prod M N).prodCongr (zmodAddCyclicAddEquiv <|
    isAddCyclic_right_of_prod M N)).isAddCyclic, Nat.card_eq_zero_of_infinite] at hMN
  cases (finite_or_infinite N).symm
  · rw [Nat.card_eq_zero_of_infinite] at hMN
    let f := (ZMod.castHom (dvd_zero _) (ZMod 2)).toAddMonoidHom
    have hf := ZMod.castHom_surjective (dvd_zero 2)
    have := isAddCyclic_of_surjective (f.prodMap f) (Prod.map_surjective.mpr ⟨hf, hf⟩)
    simpa using coprime_card_of_isAddCyclic_prod (ZMod 2) (ZMod 2)
  let ZN := ZMod (Nat.card N)
  have := isAddCyclic_of_surjective ((ZMod.castHom (dvd_zero _) ZN).toAddMonoidHom.prodMap (.id ZN))
    (Prod.map_surjective.mpr ⟨ZMod.castHom_surjective (dvd_zero _), Function.surjective_id⟩)
  exact Finite.one_lt_card (α := N).ne' (by simpa [ZN] using coprime_card_of_isAddCyclic_prod ZN ZN)

@[to_additive existing not_isAddCyclic_prod_of_infinite_nontrivial]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca7580ea1cb569efd4b423d4326cb4e02e905bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

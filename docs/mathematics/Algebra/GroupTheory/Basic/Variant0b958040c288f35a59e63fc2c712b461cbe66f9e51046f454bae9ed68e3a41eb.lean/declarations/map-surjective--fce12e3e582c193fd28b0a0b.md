# map_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be3e2210-3eb4-4c3a-2330-11d9ae5217f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eee49390-a8e2-3c1a-8740-b12b9009871f",
  "kind": "theorem",
  "lexical_name": "map_surjective",
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
  "slug": "map-surjective--fce12e3e582c193fd28b0a0b",
  "source": {
    "blob": "2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 420,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce12e3e582c193fd28b0a0b0ed5a4a495f945b8c394c989e0b35f9e86c4225e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eee49390-a8e2-3c1a-8740-b12b9009871f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective {f : α → β} : Function.Surjective (map f) ↔ Function.Surjective f := by
  constructor
  · intro fs d
    rcases fs (FreeMonoid.of d) with ⟨b, hb⟩
    induction' b using FreeMonoid.inductionOn' with head _ _
    · have H := congr_arg length hb
      simp only [length_one, length_of, Nat.zero_ne_one, map_one] at H
    simp only [map_mul, map_of] at hb
    use head
    have H := congr_arg length hb
    simp only [length_mul, length_of, add_eq_left, length_eq_zero] at H
    rw [H, mul_one] at hb
    exact FreeMonoid.of_injective hb
  intro fs d
  induction' d using FreeMonoid.inductionOn' with head tail ih
  · use 1
    rfl
  specialize fs head
  rcases fs with ⟨a, rfl⟩
  rcases ih with ⟨b, rfl⟩
  use FreeMonoid.of a * b
  rfl

end Map

/-! ### reverse -/

section Reverse
/-- reverses the symbols in a free monoid element -/
@[to_additive "reverses the symbols in an additive free monoid element"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

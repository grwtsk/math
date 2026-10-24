# HasProd.of_nat_of_neg_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2f06afe-82be-157d-afb4-4fa00ae2d44f",
  "kind": "lemma",
  "lexical_name": "HasProd.of_nat_of_neg_add_one",
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
  "slug": "hasprod-of-nat-of-neg-add-one--64287dc1f8b9bcebc659e770",
  "source": {
    "blob": "624c07c9320fefeeaaa58de5950a512fe2c38641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64287dc1f8b9bcebc659e770ac82e35c3554ae81d8f25453cf9e0c3cfd486fdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f06afe-82be-157d-afb4-4fa00ae2d44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasProd.of_nat_of_neg_add_one {f : ℤ → M}
    (hf₁ : HasProd (fun n : ℕ ↦ f n) m) (hf₂ : HasProd (fun n : ℕ ↦ f (-(n + 1))) m') :
    HasProd f (m * m') := by
  have hi₂ : Injective Int.negSucc := @Int.negSucc.inj
  have : IsCompl (Set.range ((↑) : ℕ → ℤ)) (Set.range Int.negSucc) := by
    constructor
    · rw [disjoint_iff_inf_le]
      rintro _ ⟨⟨i, rfl⟩, ⟨j, ⟨⟩⟩⟩
    · rw [codisjoint_iff_le_sup]
      rintro (i | j) <;> simp
  exact (Nat.cast_injective.hasProd_range_iff.mpr hf₁).mul_isCompl
    this (hi₂.hasProd_range_iff.mpr hf₂)


@[to_additive Summable.of_nat_of_neg_add_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624c07c9320fefeeaaa58de5950a512fe2c38641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

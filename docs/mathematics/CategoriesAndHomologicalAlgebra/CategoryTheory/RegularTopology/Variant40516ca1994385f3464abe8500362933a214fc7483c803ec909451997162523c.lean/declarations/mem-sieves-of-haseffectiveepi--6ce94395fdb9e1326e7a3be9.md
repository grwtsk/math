# mem_sieves_of_hasEffectiveEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d62dc4654e53a9282dd821589e332ee543a7e2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40516ca1994385f3464abe8500362933a214fc7483c803ec909451997162523c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a01d1a52-8a8d-d90f-d16a-16900a70b624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfda3a12-424b-83c9-bf5c-d5ad0f19c754",
  "kind": "theorem",
  "lexical_name": "mem_sieves_of_hasEffectiveEpi",
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
  "slug": "mem-sieves-of-haseffectiveepi--6ce94395fdb9e1326e7a3be9",
  "source": {
    "blob": "7d62dc4654e53a9282dd821589e332ee543a7e2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Variant40516ca1994385f3464abe8500362933a214fc7483c803ec909451997162523c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce94395fdb9e1326e7a3be91e7f33e7f103129a6835978d2da8cb83267e2d12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Variant40516ca1994385f3464abe8500362933a214fc7483c803ec909451997162523c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfda3a12-424b-83c9-bf5c-d5ad0f19c754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sieves_of_hasEffectiveEpi (S : Sieve X) :
    (∃ (Y : C) (π : Y ⟶ X), EffectiveEpi π ∧ S.arrows π) → (S ∈ (regularTopology C) X) := by
  rintro ⟨Y, π, h⟩
  have h_le : Sieve.generate (Presieve.ofArrows (fun () ↦ Y) (fun _ ↦ π)) ≤ S := by
    rw [Sieve.generate_le_iff (Presieve.ofArrows _ _) S]
    apply Presieve.le_of_factorsThru_sieve (Presieve.ofArrows _ _) S _
    intro W g f
    refine ⟨W, 𝟙 W, ?_⟩
    cases f
    exact ⟨π, ⟨h.2, Category.id_comp π⟩⟩
  apply Coverage.saturate_of_superset (regularCoverage C) h_le
  exact Coverage.Saturate.of X _ ⟨Y, π, rfl, h.1⟩

/-- Effective epis in a preregular category are stable under composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Variant40516ca1994385f3464abe8500362933a214fc7483c803ec909451997162523c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Variant40516ca1994385f3464abe8500362933a214fc7483c803ec909451997162523c.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d62dc4654e53a9282dd821589e332ee543a7e2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

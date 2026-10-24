# ex_dioph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09568de59493f90e584945e77a9a05135caec77c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8df1f5f5-770f-c8d4-dda9-64bfa57c24ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:900247e4-e12e-f754-8df5-6da71421602d",
  "kind": "theorem",
  "lexical_name": "ex_dioph",
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
  "slug": "ex-dioph--40dfc58c050adb5f5e915d6c",
  "source": {
    "blob": "09568de59493f90e584945e77a9a05135caec77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 430,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40dfc58c050adb5f5e915d6cb6e7b3fedc4d639d2c917b3b7acac68aee7dc066",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900247e4-e12e-f754-8df5-6da71421602d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ex_dioph {S : Set (Sum α β → ℕ)} : Dioph S → Dioph {v | ∃ x, v ⊗ x ∈ S}
  | ⟨γ, p, pe⟩ =>
    ⟨Sum β γ, p.map ((inl ⊗ inr ∘ inl) ⊗ inr ∘ inr), fun v =>
      ⟨fun ⟨x, hx⟩ =>
        let ⟨t, ht⟩ := (pe _).1 hx
        ⟨x ⊗ t, by
          simp; rw [show (v ⊗ x ⊗ t) ∘ ((inl ⊗ inr ∘ inl) ⊗ inr ∘ inr) = (v ⊗ x) ⊗ t from
            funext fun s => by cases' s with a b <;> try { cases a <;> rfl }; rfl]
          exact ht⟩,
        fun ⟨t, ht⟩ =>
        ⟨t ∘ inl,
          (pe _).2
            ⟨t ∘ inr, by
              simp at ht
              rwa [show (v ⊗ t) ∘ ((inl ⊗ inr ∘ inl) ⊗ inr ∘ inr) = (v ⊗ t ∘ inl) ⊗ t ∘ inr from
                funext fun s => by cases' s with a b <;> try { cases a <;> rfl }; rfl] at ht⟩⟩⟩⟩
#align dioph.ex_dioph Dioph.ex_dioph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09568de59493f90e584945e77a9a05135caec77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

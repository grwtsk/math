# IccExtend_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "826fe6ff4425ec50bb2e31e6ed91d89561b90f2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d766426a8817f8256ba0e03052aa520993a8957d147eb993fec8f08252422dac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:786b10c6-0db1-d11c-84d6-30b48daae0a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e43dd616-9693-914b-2667-82344cdb3768",
  "kind": "theorem",
  "lexical_name": "IccExtend_eq_self",
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
  "slug": "iccextend-eq-self--d1bc83bf5a5f90ad67a4132f",
  "source": {
    "blob": "826fe6ff4425ec50bb2e31e6ed91d89561b90f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variantd766426a8817f8256ba0e03052aa520993a8957d147eb993fec8f08252422dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1bc83bf5a5f90ad67a4132fd0eccf5c1be3008a1405e5ea6de2d5f09dbc7c17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variantd766426a8817f8256ba0e03052aa520993a8957d147eb993fec8f08252422dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e43dd616-9693-914b-2667-82344cdb3768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IccExtend_eq_self (f : α → β) (ha : ∀ x < a, f x = f a) (hb : ∀ x, b < x → f x = f b) :
    IccExtend h (f ∘ (↑)) = f := by
  ext x
  rcases lt_or_le x a with hxa | hax
  · simp [IccExtend_of_le_left _ _ hxa.le, ha x hxa]
  · rcases le_or_lt x b with hxb | hbx
    · lift x to Icc a b using ⟨hax, hxb⟩
      rw [IccExtend_val, comp_apply]
    · simp [IccExtend_of_right_le _ _ hbx.le, hb x hbx]

end Set

open Set

variable [Preorder β] {s t : Set α} {a b : α} (h : a ≤ b) {f : Icc a b → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variantd766426a8817f8256ba0e03052aa520993a8957d147eb993fec8f08252422dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variantd766426a8817f8256ba0e03052aa520993a8957d147eb993fec8f08252422dac.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `826fe6ff4425ec50bb2e31e6ed91d89561b90f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

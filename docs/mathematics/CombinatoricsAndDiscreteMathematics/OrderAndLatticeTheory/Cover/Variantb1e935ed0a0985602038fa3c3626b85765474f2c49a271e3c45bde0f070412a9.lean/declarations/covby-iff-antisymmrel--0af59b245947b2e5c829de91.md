# covBy_iff_antisymmRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b49d6df8-c78c-fd73-5ff1-2aadc1a14760",
  "kind": "lemma",
  "lexical_name": "covBy_iff_antisymmRel",
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
  "slug": "covby-iff-antisymmrel--0af59b245947b2e5c829de91",
  "source": {
    "blob": "ca4fb591726d716342d8c3b1af117cdc0f615f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 635,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af59b245947b2e5c829de91009ef5c8b8bb3beae7e2ea550d3e42482489588c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b49d6df8-c78c-fd73-5ff1-2aadc1a14760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covBy_iff_antisymmRel :
    a ⋖ b ↔ ∃ i, a i ⋖ b i ∧ ∀ j ≠ i, AntisymmRel (· ≤ ·) (a j) (b j) := by
  constructor
  · intro h
    obtain ⟨j, hj⟩ := (Pi.lt_def.1 h.1).2
    have : Nonempty ι := ⟨j⟩
    obtain ⟨i, hi⟩ := exists_forall_antisymmRel_of_wcovBy h.wcovBy
    obtain rfl : i = j := by_contra fun this ↦ (hi j (Ne.symm this)).2.not_lt hj
    exact ⟨i, covBy_iff_wcovBy_and_lt.2 ⟨h.wcovBy.eval i, hj⟩, hi⟩
  rintro ⟨i, hi, h⟩
  have : Nonempty ι := ⟨i⟩
  refine covBy_iff_wcovBy_and_lt.2 ⟨wcovBy_iff_antisymmRel.2 ⟨i, hi.wcovBy, h⟩, ?_⟩
  exact Pi.lt_def.2 ⟨fun j ↦ (eq_or_ne j i).elim (· ▸ hi.1.le) (h j · |>.1), i, hi.1⟩

end Preorder

section PartialOrder

variable {ι : Type*} {α : ι → Type*} [∀ i, PartialOrder (α i)] {a b : (i : ι) → α i}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4fb591726d716342d8c3b1af117cdc0f615f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

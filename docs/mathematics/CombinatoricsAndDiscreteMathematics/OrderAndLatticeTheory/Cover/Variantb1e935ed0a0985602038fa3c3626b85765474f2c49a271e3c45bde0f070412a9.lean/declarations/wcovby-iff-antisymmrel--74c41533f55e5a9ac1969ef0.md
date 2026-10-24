# wcovBy_iff_antisymmRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d852586f-3bf7-7269-bcb7-3cc38c35f61c",
  "kind": "lemma",
  "lexical_name": "wcovBy_iff_antisymmRel",
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
  "slug": "wcovby-iff-antisymmrel--74c41533f55e5a9ac1969ef0",
  "source": {
    "blob": "ca4fb591726d716342d8c3b1af117cdc0f615f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 613,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c41533f55e5a9ac1969ef0432174ee79c2e8e052f815530bc0f5bccef2dd27",
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

Occurrence: `result:d852586f-3bf7-7269-bcb7-3cc38c35f61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wcovBy_iff_antisymmRel [Nonempty ι] :
    a ⩿ b ↔ ∃ i, a i ⩿ b i ∧ ∀ j ≠ i, AntisymmRel (· ≤ ·) (a j) (b j) := by
  constructor
  · intro h
    obtain ⟨i, hi⟩ := exists_forall_antisymmRel_of_wcovBy h
    exact ⟨i, h.eval _, hi⟩
  rintro ⟨i, hab, h⟩
  refine ⟨fun j ↦ (eq_or_ne j i).elim (· ▸ hab.1) (h j · |>.1), fun c hac hcb ↦ ?_⟩
  have haci : a i < c i := by
    obtain ⟨hac, j, hj⟩ := Pi.lt_def.1 hac
    exact (eq_or_ne j i).elim (· ▸ hj) fun hj' ↦
      ((lt_of_antisymmRel_of_lt (h j hj').symm hj).not_le (hcb.le j)).elim
  have hcbi : c i < b i := by
    obtain ⟨hcb, j, hj⟩ := Pi.lt_def.1 hcb
    exact (eq_or_ne j i).elim (· ▸ hj) fun hj' ↦
      ((lt_of_lt_of_antisymmRel hj (h j hj').symm).not_le (hac.le j)).elim
  exact hab.2 haci hcbi

/--
A characterisation of the `CovBy` relation in products of preorders. See `Pi.covBy_iff` for the
(more common) version in products of partial orders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variantb1e935ed0a0985602038fa3c3626b85765474f2c49a271e3c45bde0f070412a9.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4fb591726d716342d8c3b1af117cdc0f615f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

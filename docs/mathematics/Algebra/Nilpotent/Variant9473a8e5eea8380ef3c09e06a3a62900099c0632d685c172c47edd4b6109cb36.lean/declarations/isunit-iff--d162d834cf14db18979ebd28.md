# isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf1fe713ca12a53efb415cf5b9b843e678627c0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9473a8e5eea8380ef3c09e06a3a62900099c0632d685c172c47edd4b6109cb36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1755159-5a7d-c830-51ae-2c9bea21006f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4aa206e-5d65-2bee-dee3-bfd71e1dce7f",
  "kind": "theorem",
  "lexical_name": "isUnit_iff",
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
  "slug": "isunit-iff--d162d834cf14db18979ebd28",
  "source": {
    "blob": "cf1fe713ca12a53efb415cf5b9b843e678627c0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/Algebra/Nilpotent/Variant9473a8e5eea8380ef3c09e06a3a62900099c0632d685c172c47edd4b6109cb36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d162d834cf14db18979ebd28bf4785f6d58a34acf032f150e26a548850eb87c4",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant9473a8e5eea8380ef3c09e06a3a62900099c0632d685c172c47edd4b6109cb36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4aa206e-5d65-2bee-dee3-bfd71e1dce7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff : IsUnit P ↔ IsUnit (P.coeff 0) ∧ ∀ i ≠ 0, IsNilpotent (P.coeff i) := by
  classical
  refine ⟨fun H ↦ ⟨H.map constantCoeff, ?_⟩, fun ⟨h₁, h₂⟩ ↦ ?_⟩
  · intro n hn
    obtain ⟨i, hi⟩ : ∃ i, n i ≠ 0 := by simpa [Finsupp.ext_iff] using hn
    let e := (optionEquivLeft _ _).symm.trans (renameEquiv R (Equiv.optionSubtypeNe i))
    have H := (Polynomial.coeff_isUnit_isNilpotent_of_isUnit (H.map e.symm)).2 (n i) hi
    simp only [ne_eq, isNilpotent_iff] at H
    convert! ← H (n.equivMapDomain (Equiv.optionSubtypeNe i).symm).some
    refine (optionEquivLeft_coeff_some_coeff_none R { b // b ≠ i }
      (Finsupp.equivMapDomain (Equiv.optionSubtypeNe i).symm n)
      ((renameEquiv R (Equiv.optionSubtypeNe i)).symm P)).trans ?_
    simp [Finsupp.equivMapDomain_eq_mapDomain, -Equiv.optionSubtypeNe_symm_apply,
      coeff_rename_mapDomain _ (Equiv.optionSubtypeNe i).symm.injective]
  · have : IsNilpotent (P - C (P.coeff 0)) := by
      simp +contextual [isNilpotent_iff, apply_ite, eq_comm, h₂]
    simpa using this.isUnit_add_right_of_commute (h₁.map C) (.all _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant9473a8e5eea8380ef3c09e06a3a62900099c0632d685c172c47edd4b6109cb36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant9473a8e5eea8380ef3c09e06a3a62900099c0632d685c172c47edd4b6109cb36.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1fe713ca12a53efb415cf5b9b843e678627c0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

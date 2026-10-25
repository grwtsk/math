# not_isUnit_iff_exists_factors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86dd28349b1185f191a09ead5dd3717ec08ffdf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9fd9376c69ec919244e75199cbe49e2aba05608076a98e53b3d2e3875b36115.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f62e8b32-dfef-3015-447e-fdd994451305",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94a4061d-5491-71f3-9822-f1ac2b39bc6e",
  "kind": "theorem",
  "lexical_name": "not_isUnit_iff_exists_factors_eq",
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
  "slug": "not-isunit-iff-exists-factors-eq--2a8d66f08700a38f592e0341",
  "source": {
    "blob": "86dd28349b1185f191a09ead5dd3717ec08ffdf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta9fd9376c69ec919244e75199cbe49e2aba05608076a98e53b3d2e3875b36115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a8d66f08700a38f592e0341bb411b4931345b61b6bccc8d1a61f3fdae45124d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta9fd9376c69ec919244e75199cbe49e2aba05608076a98e53b3d2e3875b36115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a4061d-5491-71f3-9822-f1ac2b39bc6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isUnit_iff_exists_factors_eq (a : α) (hn0 : a ≠ 0) :
    ¬IsUnit a ↔ ∃ f : Multiset α, (∀ b ∈ f, Irreducible b) ∧ f.prod = a ∧ f ≠ ∅ :=
  ⟨fun hnu => by
    obtain ⟨f, hi, u, rfl⟩ := exists_factors a hn0
    obtain ⟨b, h⟩ := Multiset.exists_mem_of_ne_zero fun h : f = 0 => hnu <| by simp [h]
    classical
      refine ⟨(f.erase b).cons (b * u), fun a ha => ?_, ?_, Multiset.cons_ne_zero⟩
      · obtain rfl | ha := Multiset.mem_cons.1 ha
        exacts [Associated.irreducible ⟨u, rfl⟩ (hi b h), hi a (Multiset.mem_of_mem_erase ha)]
      · rw [Multiset.prod_cons, mul_comm b, mul_assoc, Multiset.prod_erase h, mul_comm],
    fun ⟨_, hi, he, hne⟩ =>
    let ⟨b, h⟩ := Multiset.exists_mem_of_ne_zero hne
    not_isUnit_of_not_isUnit_dvd (hi b h).not_isUnit <| he ▸ Multiset.dvd_prod h⟩

@[deprecated (since := "2026-08-02")]
alias not_unit_iff_exists_factors_eq := not_isUnit_iff_exists_factors_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta9fd9376c69ec919244e75199cbe49e2aba05608076a98e53b3d2e3875b36115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta9fd9376c69ec919244e75199cbe49e2aba05608076a98e53b3d2e3875b36115.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86dd28349b1185f191a09ead5dd3717ec08ffdf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

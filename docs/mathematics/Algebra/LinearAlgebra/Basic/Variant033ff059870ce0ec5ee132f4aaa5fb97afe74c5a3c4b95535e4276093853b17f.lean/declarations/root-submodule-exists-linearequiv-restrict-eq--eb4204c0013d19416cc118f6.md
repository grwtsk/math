# _root_.Submodule.exists_linearEquiv_restrict_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b756466fea69ecc649e9e672eb486a4d5677fc46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8b35b41-96de-e1f3-e7e3-6e17944d8903",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e9287a1-30d0-f365-f922-4715a6019869",
  "kind": "theorem",
  "lexical_name": "_root_.Submodule.exists_linearEquiv_restrict_eq",
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
  "slug": "root-submodule-exists-linearequiv-restrict-eq--eb4204c0013d19416cc118f6",
  "source": {
    "blob": "b756466fea69ecc649e9e672eb486a4d5677fc46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb4204c0013d19416cc118f69181c2a90e087ce7d406c36ba11c1e57808be307",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e9287a1-30d0-f365-f922-4715a6019869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Submodule.exists_linearEquiv_restrict_eq
    {W W' : Submodule K V} [FiniteDimensional K W] (f : W ≃ₗ[K] W') :
    ∃ g : V ≃ₗ[K] V, ∀ x : W, f x = g x := by
  obtain ⟨Q, hQ⟩ := Submodule.exists_isCompl W
  let eQ := W.prodEquivOfIsCompl Q hQ
  obtain ⟨Q', hQ'⟩ := Submodule.exists_isCompl W'
  let eQ' := W'.prodEquivOfIsCompl Q' hQ'
  suffices Nonempty (Q ≃ₗ[K] Q') from
    ⟨eQ.symm ≪≫ₗ (LinearEquiv.prodCongr f this.some) ≪≫ₗ eQ', by aesop⟩
  refine Module.nonempty_linearEquiv_iff_rank_eq.mpr ?_
  rw [← Cardinal.add_right_inj_of_lt_aleph0 (γ := Module.rank K W),
    add_comm, ← rank_prod', Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨eQ⟩,
    add_comm, Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨f⟩,
    ← rank_prod', Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨eQ'⟩]
  exact Module.rank_lt_aleph0 K ↥W

section

open Finset

variable {L : Type*} [Field L] [LinearOrder L] [IsStrictOrderedRing L]
variable {W : Type v} [AddCommGroup W] [Module L W]

/-- A slight strengthening of `exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card`
available when working over an ordered field:
we can ensure a positive coefficient, not just a nonzero coefficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b756466fea69ecc649e9e672eb486a4d5677fc46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

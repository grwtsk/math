# emod_two_eq_zero_or_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:833ac9d9-2bd7-d498-52d3-6ad0428868ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f0f7a3a-f596-0660-761c-8f08994105a9",
  "kind": "theorem",
  "lexical_name": "emod_two_eq_zero_or_one",
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
  "slug": "emod-two-eq-zero-or-one--9ddb97ea8017738fc1cf35f4",
  "source": {
    "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 315,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ddb97ea8017738fc1cf35f403fdfb79cf241007d8e975ff2be4c823d3c1f26c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0f7a3a-f596-0660-761c-8f08994105a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emod_two_eq_zero_or_one (n : ℤ) : n % 2 = 0 ∨ n % 2 = 1 :=
  have h : n % 2 < 2 := abs_of_nonneg (show 0 ≤ (2 : ℤ) by decide) ▸ Int.emod_lt _ (by decide)
  have h₁ : 0 ≤ n % 2 := Int.emod_nonneg _ (by decide)
  match n % 2, h, h₁ with
  | (0 : ℕ), _ ,_ => Or.inl rfl
  | (1 : ℕ), _ ,_ => Or.inr rfl
  -- Porting note: this used to be `=> absurd h (by decide)`
  -- see https://github.com/leanprover-community/mathlib4/issues/994
  | (k + 2 : ℕ), h₁, _ => False.elim (h₁.not_le (by
    rw [Nat.cast_add]
    exact (le_add_iff_nonneg_left 2).2 (NonNeg.mk k)))
  -- Porting note: this used to be `=> absurd h₁ (by decide)`
  | -[a+1], _, h₁ => by cases h₁
#align int.mod_two_eq_zero_or_one Int.emod_two_eq_zero_or_one

/-! ### dvd -/

#align int.dvd_of_mod_eq_zero Int.dvd_of_emod_eq_zero

#align int.mod_eq_zero_of_dvd Int.emod_eq_zero_of_dvd

#align int.dvd_iff_mod_eq_zero Int.dvd_iff_emod_eq_zero

#align int.dvd_sub_of_mod_eq Int.dvd_sub_of_emod_eq

#align int.nat_abs_dvd Int.natAbs_dvd

#align int.dvd_nat_abs Int.dvd_natAbs

#align int.decidable_dvd Int.decidableDvd

#align int.div_mul_cancel Int.ediv_mul_cancel

#align int.mul_div_cancel' Int.mul_ediv_cancel'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a321d236658e896744880bc853bb7bdc52c2a0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

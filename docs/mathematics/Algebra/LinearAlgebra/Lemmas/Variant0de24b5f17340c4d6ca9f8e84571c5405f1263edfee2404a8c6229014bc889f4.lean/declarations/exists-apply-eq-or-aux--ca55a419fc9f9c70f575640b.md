# exists_apply_eq_or_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd014496-4c3e-5278-7a37-b9c7b8ca380a",
  "kind": "theorem",
  "lexical_name": "exists_apply_eq_or_aux",
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
  "slug": "exists-apply-eq-or-aux--ca55a419fc9f9c70f575640b",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 303,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca55a419fc9f9c70f575640b3d9d7f7c3b365e1f4d4c3967ee929d56b62a1435",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd014496-4c3e-5278-7a37-b9c7b8ca380a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_apply_eq_or_aux {x y z : R}
    (hij : x = 2 * y ∨ x = 3 * y ∨ y = 2 * x ∨ y = 3 * x)
    (hik : x = 2 * z ∨ x = 3 * z ∨ z = 2 * x ∨ z = 3 * x)
    (hjk : y = 2 * z ∨ y = 3 * z ∨ z = 2 * y ∨ z = 3 * y) :
    x = 0 ∧ y = 0 ∧ z = 0 := by
  /- The below proof (due to Mario Carneiro, Johan Commelin, Bhavik Mehta, Jingting Wang) should
     not really be necessary: we should have a tactic to crush this. -/
  suffices y = 0 ∨ z = 0 by apply this.elim <;> rintro rfl <;> simp_all
  let S : Finset (ℕ × ℕ) := {(1, 2), (1, 3), (2, 1), (3, 1)}
  obtain ⟨⟨ab, hab, hxy⟩, ⟨cd, hcd, hxz⟩, ⟨ef, hef, hyz⟩⟩ :
    (∃ ab ∈ S, ab.1 * x = ab.2 * y) ∧
    (∃ cd ∈ S, cd.1 * x = cd.2 * z) ∧
    (∃ ef ∈ S, ef.1 * y = ef.2 * z) := by
    simp_all only [Finset.mem_insert, Finset.mem_singleton, exists_eq_or_imp, Nat.cast_one, one_mul,
      Nat.cast_ofNat, eq_comm, exists_eq_left, and_self, S]
  have : (ab.1 * cd.2 * ef.1 : R) ≠ ab.2 * cd.1 * ef.2 := by norm_cast; clear! R; decide +revert
  have : (ab.1 * cd.2 * ef.1 - ab.2 * cd.1 * ef.2) * (y * z) = 0 := by
    linear_combination z * cd.1 * ef.2 * hxy - ab.1 * ef.1 * y * hxz + ab.1 * x * cd.1 * hyz
  simp_all only [ne_eq, mul_eq_zero, sub_eq_zero, false_or, S]

/-- A reduced irreducible finite crystallographic root system has roots of at most two different
lengths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

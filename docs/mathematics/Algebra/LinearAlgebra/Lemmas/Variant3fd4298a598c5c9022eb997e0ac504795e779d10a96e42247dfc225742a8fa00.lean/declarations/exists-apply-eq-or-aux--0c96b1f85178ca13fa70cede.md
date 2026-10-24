# exists_apply_eq_or_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a05b346a-0d19-dcc2-28bc-22cb46406115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc10a666-54d0-4759-1dda-fe5a5e084d31",
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
  "slug": "exists-apply-eq-or-aux--0c96b1f85178ca13fa70cede",
  "source": {
    "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c96b1f85178ca13fa70cede625fa3c08b646f10cf06544aa9ae382256e378f9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc10a666-54d0-4759-1dda-fe5a5e084d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–316.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

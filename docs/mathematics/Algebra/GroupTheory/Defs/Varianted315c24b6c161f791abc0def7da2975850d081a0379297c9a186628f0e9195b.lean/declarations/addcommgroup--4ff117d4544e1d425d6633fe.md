# addCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94e09a3f58dc5cfc9144148e5de34964ccbe18a63331e9cb550c213c7c49a744",
  "kind": "instance",
  "lexical_name": "addCommGroup",
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
  "slug": "addcommgroup--4ff117d4544e1d425d6633fe",
  "source": {
    "blob": "c66021e40f6aefda3b98f207041cc0c16f83e53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff117d4544e1d425d6633feb37ba3d976cc581d111b697877bc4a7bf7b0262a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94e09a3f58dc5cfc9144148e5de34964ccbe18a63331e9cb550c213c7c49a744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommGroup : AddCommGroup ℚ where
  zero_add := Rat.zero_add
  add_zero := Rat.add_zero
  add_comm := Rat.add_comm
  add_assoc := Rat.add_assoc
  neg_add_cancel := Rat.neg_add_cancel
  sub_eq_add_neg := Rat.sub_eq_add_neg
  nsmul := (· * ·)
  zsmul := (· * ·)
  nsmul_zero := Rat.zero_mul
  nsmul_succ n q := by
    change ((n + 1 : Int) : Rat) * q = _
    rw [Rat.intCast_add, Rat.add_mul, Rat.intCast_one, Rat.one_mul]
    rfl
  zsmul_zero' := Rat.zero_mul
  zsmul_succ' _ _ := by simp_rw [HSMul.hSMul, SMul.smul]; simp [Rat.add_mul]
  zsmul_neg' _ _ := by
    simp_rw [HSMul.hSMul, SMul.smul]
    rw [Int.negSucc_eq, Rat.intCast_neg, Rat.neg_mul]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c66021e40f6aefda3b98f207041cc0c16f83e53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

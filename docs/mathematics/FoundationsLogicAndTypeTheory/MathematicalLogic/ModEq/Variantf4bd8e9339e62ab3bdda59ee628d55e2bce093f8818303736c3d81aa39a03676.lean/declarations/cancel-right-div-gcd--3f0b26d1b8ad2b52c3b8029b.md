# cancel_right_div_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e35b7b9-845a-115c-ad2c-3f967c85f979",
  "kind": "theorem",
  "lexical_name": "cancel_right_div_gcd",
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
  "slug": "cancel-right-div-gcd--3f0b26d1b8ad2b52c3b8029b",
  "source": {
    "blob": "20eba0dd8c82ba864919d993fb08f2597dbf4e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f0b26d1b8ad2b52c3b8029ba168c05348293fa5f8b0b0067abcb68235399d37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e35b7b9-845a-115c-ad2c-3f967c85f979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_right_div_gcd (hm : 0 < m) (h : a * c ≡ b * c [ZMOD m]) :
    a ≡ b [ZMOD m / gcd m c] := by
  letI d := gcd m c
  have hmd := gcd_dvd_left m c
  have hcd := gcd_dvd_right m c
  rw [modEq_iff_dvd] at h ⊢
  -- porting note: removed `show` due to leanprover-community/mathlib4#3305
  refine Int.dvd_of_dvd_mul_right_of_gcd_one (?_ : m / d ∣ c / d * (b - a)) ?_
  · rw [mul_comm, ← Int.mul_ediv_assoc (b - a) hcd, sub_mul]
    exact Int.ediv_dvd_ediv hmd h
  · rw [gcd_div hmd hcd, natAbs_ofNat, Nat.div_self (gcd_pos_of_ne_zero_left c hm.ne')]
#align int.modeq.cancel_right_div_gcd Int.ModEq.cancel_right_div_gcd

/-- To cancel a common factor `c` from a `ModEq` we must divide the modulus `m` by `gcd m c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20eba0dd8c82ba864919d993fb08f2597dbf4e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

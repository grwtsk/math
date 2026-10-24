# monotoneOn_descPochhammer_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1420f0df-7ea7-1e0c-574c-76e214e6bcae",
  "kind": "theorem",
  "lexical_name": "monotoneOn_descPochhammer_eval",
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
  "slug": "monotoneon-descpochhammer-eval--73c9a1636a80bd0cbe165a88",
  "source": {
    "blob": "30a7dc5fa43bf3491b1a8b79afb762e553823b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 507,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73c9a1636a80bd0cbe165a8837a5ecddd41142a3f0de16cc81fc2d21af74ae90",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1420f0df-7ea7-1e0c-574c-76e214e6bcae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotoneOn_descPochhammer_eval (n : ℕ) :
    MonotoneOn (descPochhammer S n).eval (Set.Ici (n - 1 : S)) := by
  induction n with
  | zero => simp [monotoneOn_const]
  | succ n ih =>
    intro a ha b hb hab
    rw [Set.mem_Ici, Nat.cast_add_one, add_sub_cancel_right] at ha hb
    have ha_sub1 : n - 1 ≤ a := (sub_le_self (n : S) zero_le_one).trans ha
    have hb_sub1 : n - 1 ≤ b := (sub_le_self (n : S) zero_le_one).trans hb
    simp_rw [descPochhammer_succ_eval]
    exact mul_le_mul (ih ha_sub1 hb_sub1 hab) (sub_le_sub_right hab (n : S))
      (sub_nonneg_of_le ha) (descPochhammer_nonneg hb_sub1)

end StrictOrderedRing

variable (K : Type*)

namespace Nat
section DivisionSemiring
variable [DivisionSemiring K] [CharZero K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a7dc5fa43bf3491b1a8b79afb762e553823b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

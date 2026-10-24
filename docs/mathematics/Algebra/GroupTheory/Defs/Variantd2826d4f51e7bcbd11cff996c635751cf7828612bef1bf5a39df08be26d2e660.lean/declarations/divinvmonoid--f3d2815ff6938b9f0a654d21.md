# DivInvMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a2be8c8b6ab43bff331c92dadf0ab54cb73369582b4376c08a0c202b310bfeb",
  "kind": "class",
  "lexical_name": "DivInvMonoid",
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
  "slug": "divinvmonoid--f3d2815ff6938b9f0a654d21",
  "source": {
    "blob": "9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 822,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3d2815ff6938b9f0a654d21583b460534fe0983f8b271ed6d7caabf2666ce6f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a2be8c8b6ab43bff331c92dadf0ab54cb73369582b4376c08a0c202b310bfeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DivInvMonoid (G : Type u) extends Monoid G, Inv G, Div G where
  protected div := DivInvMonoid.div'
  /-- `a / b := a * b⁻¹` -/
  protected div_eq_mul_inv : ∀ a b : G, a / b = a * b⁻¹ := by intros; rfl
  /-- The power operation: `a ^ n = a * ··· * a`; `a ^ (-n) = a⁻¹ * ··· a⁻¹` (`n` times) -/
  protected zpow : ℤ → G → G := zpowRec npowRec
  /-- `a ^ 0 = 1` -/
  protected zpow_zero' : ∀ a : G, zpow 0 a = 1 := by intros; rfl
  /-- `a ^ (n + 1) = a ^ n * a` -/
  protected zpow_succ' (n : ℕ) (a : G) : zpow n.succ a = zpow n a * a := by
    intros; rfl
  /-- `a ^ -(n + 1) = (a ^ (n + 1))⁻¹` -/
  protected zpow_neg' (n : ℕ) (a : G) : zpow (Int.negSucc n) a = (zpow n.succ a)⁻¹ := by intros; rfl

/-- In a class equipped with instances of both `AddMonoid` and `Neg`, this definition records what
the default definition for `Sub` would be: `a + -b`.  This is later provided as the default value
for the `Sub` instance in `SubNegMonoid`.

We keep it as a separate definition rather than inlining it in `SubNegMonoid` so that the `Sub`
field of individual `SubNegMonoid`s constructed using that default value will not be unfolded at
`.instance` transparency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# strongNormalizationMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d7f5ed7a5acefc2f897fdf1e89a6892cc1b84002cb77c6444f3ac6593d1f274",
  "kind": "instance",
  "lexical_name": "strongNormalizationMonoid",
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
  "slug": "strongnormalizationmonoid--e0192d17f7f50e81252c5d68",
  "source": {
    "blob": "aa378a5bf96eed77910be15f1fa7aca582618372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0192d17f7f50e81252c5d68a911c75d0ab2c8c0536a6c0789cec6d574234146",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d7f5ed7a5acefc2f897fdf1e89a6892cc1b84002cb77c6444f3ac6593d1f274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance strongNormalizationMonoid : StrongNormalizationMonoid ℤ where
  normUnit a := if 0 ≤ a then 1 else -1
  normUnit_zero := ite_eq_left le_rfl
  normUnit_mul {a b} hna hnb := by
    rcases hna.lt_or_gt with ha | ha <;> rcases hnb.lt_or_gt with hb | hb <;>
      simp [Int.mul_nonneg_iff, ha.le, ha.not_ge, hb.le, hb.not_ge]
  normUnit_coe_units u :=
    (units_eq_one_or u).elim (fun eq => eq.symm ▸ ite_eq_left Int.one_nonneg) fun eq =>
      eq.symm ▸ ite_eq_right (not_le_of_gt <| show (-1 : ℤ) < 0 by decide)

@[deprecated (since := "2026-07-08")]
alias normalizationMonoid := strongNormalizationMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa378a5bf96eed77910be15f1fa7aca582618372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

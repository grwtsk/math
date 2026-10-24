# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5499fa2df391c3dd29effb1b69ffe117bff85915f68a4f24a703738dbb9163c4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f85a420fa5aff3a1d9e14743",
  "source": {
    "blob": "aa378a5bf96eed77910be15f1fa7aca582618372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 107,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f85a420fa5aff3a1d9e1474367f2666c3799727bb0fc2959333280ba6aea306e",
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

Occurrence: `declaration:5499fa2df391c3dd29effb1b69ffe117bff85915f68a4f24a703738dbb9163c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : GCDMonoid ℤ where
  gcd a b := Int.gcd a b
  lcm a b := Int.lcm a b
  gcd_dvd_left := Int.gcd_dvd_left
  gcd_dvd_right := Int.gcd_dvd_right
  dvd_gcd := dvd_coe_gcd
  gcd_mul_lcm a b := by
    rw [← Int.natCast_mul, gcd_mul_lcm, ← natAbs_mul, natCast_natAbs, abs_eq_normalize]
    exact normalize_associated (a * b)
  lcm_zero_left _ := natCast_eq_zero.2 <| Nat.lcm_zero_left _
  lcm_zero_right _ := natCast_eq_zero.2 <| Nat.lcm_zero_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa378a5bf96eed77910be15f1fa7aca582618372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

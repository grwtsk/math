# Commute.of_orderOf_dvd_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa09c536-e5f6-c384-c2a2-99e1702ca0d1",
  "kind": "theorem",
  "lexical_name": "Commute.of_orderOf_dvd_two",
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
  "slug": "commute-of-orderof-dvd-two--05b1c94ea078efcc19d31345",
  "source": {
    "blob": "150eeadb58b5a30e718cfbe9af487892f8c50d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 641,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b1c94ea078efcc19d313453bc8487f90bc9dceb42d443118420771ebc5d490",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa09c536-e5f6-c384-c2a2-99e1702ca0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Commute.of_orderOf_dvd_two [IsCancelMul G] (h : ∀ g : G, orderOf g ∣ 2) (a b : G) :
    Commute a b := by
  simp_rw [orderOf_dvd_iff_pow_eq_one] at h
  rw [commute_iff_eq, ← mul_right_inj a, ← mul_left_inj b]
  -- We avoid `group` here to minimize imports while low in the hierarchy;
  -- typically it would be better to invoke the tactic.
  calc
    a * (a * b) * b = a ^ 2 * b ^ 2 := by simp [pow_two, mul_assoc]
    _ = 1 := by rw [h, h, mul_one]
    _ = (a * b) ^ 2 := by rw [h]
    _ = a * (b * a) * b := by simp [pow_two, mul_assoc]

/-- In a cancellative monoid of exponent two, all elements commute. -/
@[to_additive /-- In a cancellative additive monoid of exponent two, all elements commute. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150eeadb58b5a30e718cfbe9af487892f8c50d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

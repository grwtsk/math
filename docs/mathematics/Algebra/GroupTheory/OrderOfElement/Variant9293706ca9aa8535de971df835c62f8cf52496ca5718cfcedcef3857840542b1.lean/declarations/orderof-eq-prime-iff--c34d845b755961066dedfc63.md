# orderOf_eq_prime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82cfb45-c03d-ca29-9742-b5035af922b4",
  "kind": "theorem",
  "lexical_name": "orderOf_eq_prime_iff",
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
  "slug": "orderof-eq-prime-iff--c34d845b755961066dedfc63",
  "source": {
    "blob": "164f936a4b724ed12bdb6ef6873259a1b4c9838a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 542,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant9293706ca9aa8535de971df835c62f8cf52496ca5718cfcedcef3857840542b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34d845b755961066dedfc6370c18191aff59a7d2819cd279e5b4d325fd4d2c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant9293706ca9aa8535de971df835c62f8cf52496ca5718cfcedcef3857840542b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82cfb45-c03d-ca29-9742-b5035af922b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_eq_prime_iff : orderOf x = p ↔ x ^ p = 1 ∧ x ≠ 1 := by
  rw [orderOf, minimalPeriod_eq_prime_iff, isPeriodicPt_mul_iff_pow_eq_one, IsFixedPt, mul_one]

/-- The backward direction of `orderOf_eq_prime_iff`. -/
@[to_additive /-- The backward direction of `addOrderOf_eq_prime_iff`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant9293706ca9aa8535de971df835c62f8cf52496ca5718cfcedcef3857840542b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant9293706ca9aa8535de971df835c62f8cf52496ca5718cfcedcef3857840542b1.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164f936a4b724ed12bdb6ef6873259a1b4c9838a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

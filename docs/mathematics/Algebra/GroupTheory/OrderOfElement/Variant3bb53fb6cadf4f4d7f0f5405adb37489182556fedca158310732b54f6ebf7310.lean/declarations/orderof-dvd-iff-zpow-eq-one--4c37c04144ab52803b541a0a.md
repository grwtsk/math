# orderOf_dvd_iff_zpow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb6096bd-38f6-e5ed-12e1-952d597f4c0a",
  "kind": "theorem",
  "lexical_name": "orderOf_dvd_iff_zpow_eq_one",
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
  "slug": "orderof-dvd-iff-zpow-eq-one--4c37c04144ab52803b541a0a",
  "source": {
    "blob": "339939e3cac40d57459333fb13bb319707147947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 607,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c37c04144ab52803b541a0a27a73a88b1b5b2c723e4598e32dacbe213b1c8b5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6096bd-38f6-e5ed-12e1-952d597f4c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_dvd_iff_zpow_eq_one : (orderOf x : ℤ) ∣ i ↔ x ^ i = 1 := by
  rcases Int.eq_nat_or_neg i with ⟨i, rfl | rfl⟩
  · rw [Int.natCast_dvd_natCast, orderOf_dvd_iff_pow_eq_one, zpow_natCast]
  · rw [dvd_neg, Int.natCast_dvd_natCast, zpow_neg, inv_eq_one, zpow_natCast,
      orderOf_dvd_iff_pow_eq_one]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339939e3cac40d57459333fb13bb319707147947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

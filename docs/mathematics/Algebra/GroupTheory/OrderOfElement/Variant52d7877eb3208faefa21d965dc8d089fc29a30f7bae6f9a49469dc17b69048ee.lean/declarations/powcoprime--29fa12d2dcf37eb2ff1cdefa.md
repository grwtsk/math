# powCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e63437db3e4b4a83718ba99cee7dd33d18d493802620d6f9b28d45294900ca0",
  "kind": "def",
  "lexical_name": "powCoprime",
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
  "slug": "powcoprime--29fa12d2dcf37eb2ff1cdefa",
  "source": {
    "blob": "0d101091ab1504629c78ea2898c51d7a248b9357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 996,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29fa12d2dcf37eb2ff1cdefa7e36837386412ecf03132a265fd8a92de0935904",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e63437db3e4b4a83718ba99cee7dd33d18d493802620d6f9b28d45294900ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def powCoprime {G : Type*} [Group G] (h : (Nat.card G).coprime n) : G ≃ G
    where
  toFun g := g ^ n
  invFun g := g ^ (Nat.card G).gcdB n
  left_inv g := by
    have key := congr_arg ((· ^ ·) g) ((Nat.card G).gcd_eq_gcd_ab n)
    dsimp only at key
    rwa [zpow_add, zpow_mul, zpow_mul, zpow_ofNat, zpow_ofNat, zpow_ofNat, h.gcd_eq_one, pow_one,
      pow_card_eq_one', one_zpow, one_mul, eq_comm] at key
  right_inv g := by
    have key := congr_arg ((· ^ ·) g) ((Nat.card G).gcd_eq_gcd_ab n)
    dsimp only at key
    rwa [zpow_add, zpow_mul, zpow_mul', zpow_ofNat, zpow_ofNat, zpow_ofNat, h.gcd_eq_one, pow_one,
      pow_card_eq_one', one_zpow, one_mul, eq_comm] at key
#align pow_coprime powCoprime
#align nsmul_coprime nsmulCoprime

@[to_additive] -- Porting note: simp can prove this (so removed simp)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d101091ab1504629c78ea2898c51d7a248b9357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

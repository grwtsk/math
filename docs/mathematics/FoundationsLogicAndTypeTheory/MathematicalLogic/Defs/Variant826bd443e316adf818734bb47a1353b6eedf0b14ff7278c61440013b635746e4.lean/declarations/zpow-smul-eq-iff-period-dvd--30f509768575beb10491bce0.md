# zpow_smul_eq_iff_period_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51922752-c2c5-22cc-5b5d-c3eef29812ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d6693e6-8283-6ad9-6ec0-7ff67dc75830",
  "kind": "theorem",
  "lexical_name": "zpow_smul_eq_iff_period_dvd",
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
  "slug": "zpow-smul-eq-iff-period-dvd--30f509768575beb10491bce0",
  "source": {
    "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 589,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30f509768575beb10491bce0df526aff90c3622955e2774e00b99944e2cd5135",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6693e6-8283-6ad9-6ec0-7ff67dc75830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_smul_eq_iff_period_dvd {j : ℤ} {g : G} {a : α} :
    g ^ j • a = a ↔ (period g a : ℤ) ∣ j := by
  match j with
  | (n : ℕ) => rw [zpow_natCast, Int.natCast_dvd_natCast, pow_smul_eq_iff_period_dvd]
  | -(n + 1 : ℕ) =>
    rw [zpow_neg, zpow_natCast, inv_smul_eq_iff, eq_comm, Int.dvd_neg, Int.natCast_dvd_natCast,
      pow_smul_eq_iff_period_dvd]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13c026e181e32b56f3830e702caf85c1548fa82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

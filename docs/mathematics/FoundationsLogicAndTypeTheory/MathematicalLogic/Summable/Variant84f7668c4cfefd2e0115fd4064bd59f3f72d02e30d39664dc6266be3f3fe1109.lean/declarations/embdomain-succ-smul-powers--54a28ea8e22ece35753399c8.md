# embDomain_succ_smul_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c191c5e-6f7a-d443-e2ea-069332ebe9a2",
  "kind": "theorem",
  "lexical_name": "embDomain_succ_smul_powers",
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
  "slug": "embdomain-succ-smul-powers--54a28ea8e22ece35753399c8",
  "source": {
    "blob": "01cb099bb85a761e846902f8de3143e21b4aac4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 768,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54a28ea8e22ece35753399c8a263c7c735a6c63336d9d96a4e3bb1df407b960d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c191c5e-6f7a-d443-e2ea-069332ebe9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embDomain_succ_smul_powers :
    (x • powers x).embDomain ⟨Nat.succ, Nat.succ_injective⟩ =
      powers x - ofFinsupp (Finsupp.single 0 1) := by
  apply SummableFamily.ext
  rintro (_ | n)
  · simp [hx]
  · -- FIXME: smul_eq_mul introduces type confusion between HahnModule and HahnSeries.
    simp [embDomain_apply, of_symm_smul_of_eq_mul, powers_of_orderTop_pos hx, pow_succ',
      -smul_eq_mul]

include hx in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb099bb85a761e846902f8de3143e21b4aac4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

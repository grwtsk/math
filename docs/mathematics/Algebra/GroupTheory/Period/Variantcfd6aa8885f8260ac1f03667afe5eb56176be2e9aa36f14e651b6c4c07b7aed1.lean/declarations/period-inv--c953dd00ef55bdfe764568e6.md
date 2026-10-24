# period_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a93d3ea0-18b4-8064-6cce-72517f0beeaa",
  "kind": "theorem",
  "lexical_name": "period_inv",
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
  "slug": "period-inv--c953dd00ef55bdfe764568e6",
  "source": {
    "blob": "55dbef8d72ec105d615e1414473c95d1b9905d45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c953dd00ef55bdfe764568e6f977e4651034d7d8fb035e05a9f2462a488fbcda",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a93d3ea0-18b4-8064-6cce-72517f0beeaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem period_inv (g : G) (a : α) : period g⁻¹ a = period g a := by
  simp only [period_eq_minimalPeriod, Function.minimalPeriod_eq_minimalPeriod_iff,
    isPeriodicPt_smul_iff]
  intro n
  rw [smul_eq_iff_eq_inv_smul, eq_comm, ← zpow_natCast, inv_zpow, inv_inv, zpow_natCast]

end Identities

section MonoidExponent

/-! ### `MulAction.period` and group exponents

The period of a given element `m : M` can be bounded by the `Monoid.exponent M` or `orderOf m`.
-/

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55dbef8d72ec105d615e1414473c95d1b9905d45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

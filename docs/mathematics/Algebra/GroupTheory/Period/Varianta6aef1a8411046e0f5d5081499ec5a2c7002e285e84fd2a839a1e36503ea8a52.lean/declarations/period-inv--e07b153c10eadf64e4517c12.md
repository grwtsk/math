# period_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f93fd000e968890ebb8de750b74e73085572ed68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb02c9e-456d-a701-9343-181d5c962ffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:403fb20d-a255-afd3-a874-2929cd99394a",
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
  "slug": "period-inv--e07b153c10eadf64e4517c12",
  "source": {
    "blob": "f93fd000e968890ebb8de750b74e73085572ed68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e07b153c10eadf64e4517c124fbbe5764d95031ecc1ebd432ee61864859b115f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:403fb20d-a255-afd3-a874-2929cd99394a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Period/Varianta6aef1a8411046e0f5d5081499ec5a2c7002e285e84fd2a839a1e36503ea8a52.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f93fd000e968890ebb8de750b74e73085572ed68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

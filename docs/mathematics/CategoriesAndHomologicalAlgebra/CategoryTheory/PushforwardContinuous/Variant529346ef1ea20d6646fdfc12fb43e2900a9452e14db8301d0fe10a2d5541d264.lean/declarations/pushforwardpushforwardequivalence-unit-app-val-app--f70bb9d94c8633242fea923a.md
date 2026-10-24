# pushforwardPushforwardEquivalence_unit_app_val_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4598a3e2-6e4c-2eab-d781-bca35778629c",
  "kind": "lemma",
  "lexical_name": "pushforwardPushforwardEquivalence_unit_app_val_app",
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
  "slug": "pushforwardpushforwardequivalence-unit-app-val-app--f70bb9d94c8633242fea923a",
  "source": {
    "blob": "c35bb50886d2b18cb4e55c13084b0151d71b633f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 409,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f70bb9d94c8633242fea923a81cf349238ec3095eafe21773c81006ecf7268aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4598a3e2-6e4c-2eab-d781-bca35778629c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pushforwardPushforwardEquivalence_unit_app_val_app (M U x) :
    ((pushforwardPushforwardEquivalence eqv φ ψ H₁ H₂).unit.app M).val.app U x =
      M.val.map (eqv.counit.app U.unop).op x := rfl

-- Not a simp because the type of the LHS is dsimp-able
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35bb50886d2b18cb4e55c13084b0151d71b633f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

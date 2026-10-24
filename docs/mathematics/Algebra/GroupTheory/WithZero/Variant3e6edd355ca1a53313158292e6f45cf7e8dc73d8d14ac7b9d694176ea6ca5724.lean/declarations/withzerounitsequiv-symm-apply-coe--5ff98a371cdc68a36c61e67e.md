# withZeroUnitsEquiv_symm_apply_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28b534ea-121a-105d-1bc1-e94923e5cfa7",
  "kind": "lemma",
  "lexical_name": "withZeroUnitsEquiv_symm_apply_coe",
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
  "slug": "withzerounitsequiv-symm-apply-coe--5ff98a371cdc68a36c61e67e",
  "source": {
    "blob": "c2e5538bb35e9819980fa062ff94149db8211ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 327,
    "path": "GRWTSK/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff98a371cdc68a36c61e67e761509a7051b45186687ffebcb776fba6574f10f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b534ea-121a-105d-1bc1-e94923e5cfa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withZeroUnitsEquiv_symm_apply_coe {G : Type*} [GroupWithZero G]
    [DecidablePred (fun a : G ↦ a = 0)] (a : Gˣ) :
    WithZero.withZeroUnitsEquiv.symm (a : G) = a := by
  simp

/-- A version of `Equiv.optionCongr` for `WithZero`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2e5538bb35e9819980fa062ff94149db8211ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# missing_common_profile_not_unchanged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93d32010-a0b0-c8a6-54a3-27223d967667",
  "kind": "theorem",
  "lexical_name": "missing_common_profile_not_unchanged",
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
  "slug": "missing-common-profile-not-unchanged--fbe7cd8dfe87e6453258300d",
  "source": {
    "blob": "afce078a70634370ffba6203f30ff37b7c94eb17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variant9d8ae7760a4d6c45582398af17a3b71ce7dc444de30a3148d435e6fdd583066a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe7cd8dfe87e6453258300d984bdb0e2af164747395ae2513a3cc10203abef4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variant9d8ae7760a4d6c45582398af17a3b71ce7dc444de30a3148d435e6fdd583066a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d32010-a0b0-c8a6-54a3-27223d967667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem missing_common_profile_not_unchanged
    {X : Type*} [DecidableEq X]
    (change : OntologyChange)
    (h : change.commonComparisonProfile = none)
    (oldOpen newOpen : Finset (Finset X)) :
    TopologyChangeClass.classifyWithProfile
      change.commonComparisonProfile oldOpen newOpen ≠ .topologicallyInvariant := by
  rw [missing_common_profile_is_indeterminate change h oldOpen newOpen]
  decide

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variant9d8ae7760a4d6c45582398af17a3b71ce7dc444de30a3148d435e6fdd583066a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ChangeClassification/Variant9d8ae7760a4d6c45582398af17a3b71ce7dc444de30a3148d435e6fdd583066a.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afce078a70634370ffba6203f30ff37b7c94eb17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

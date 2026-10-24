# abs_thetaPhiSignedMomentSelectionTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:226736a6-5079-00a1-af1c-468c021e48f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc86610e-de9a-c730-a768-e09db8b77a21",
  "kind": "theorem",
  "lexical_name": "abs_thetaPhiSignedMomentSelectionTerm",
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
  "slug": "abs-thetaphisignedmomentselectionterm--b9d4cb11e2c1d067434873e6",
  "source": {
    "blob": "e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9d4cb11e2c1d067434873e6f01a88d1fe9b8fec5ec4057ade3e3e0bef8e352f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc86610e-de9a-c730-a768-e09db8b77a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_thetaPhiSignedMomentSelectionTerm
    {k L : ℕ} (N : ℕ) (t : ℝ)
    (f : Fin k → Fin L) :
    |thetaPhiSignedMomentSelectionTerm N t f| =
      thetaPhiSignedMomentSelectionMagnitude N t f := by
  rw [thetaPhiSignedMomentSelectionTerm_eq_parity]
  have hm :=
    thetaPhiSignedMomentSelectionMagnitude_nonnegative N t f
  rw [abs_mul, abs_pow, abs_neg, abs_one, one_pow,
    abs_of_nonneg hm, one_mul]

/-- Finite parity sum whose terms retain all remaining signed cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# checked_item_packet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad373da6-a3b3-b51b-191c-6468af420ebd",
  "kind": "theorem",
  "lexical_name": "checked_item_packet",
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
  "slug": "checked-item-packet--c8ca12ab922eae9c1989ae01",
  "source": {
    "blob": "865bc64a18d69d2cf4325229ea08e0931dd0e1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 268,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8ca12ab922eae9c1989ae01e2d719e29204d26215b43844c76029733b20e87c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad373da6-a3b3-b51b-191c-6468af420ebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_item_packet {I : Type u} {p : ℕ}
    (cert : PartialSumOrdering.OrderingCertificate p) (before after : List I)
    (label : I → ZMod p) (injectiveLabel : Function.Injective label)
    (cost : I → ℕ) (costOrigin : ℕ) (phaseOrigin : ZMod p)
    (originalLabels : before.map label = cert.originalOrder)
    (finalLabels : after.map label = cert.finalOrder)
    (checked : PartialSumOrdering.checkCertificate cert = true) :
    after.Perm before ∧
      physicalTime costOrigin cost after after.length =
        physicalTime costOrigin cost before before.length ∧
      (postPhases phaseOrigin label after).Nodup := by
  have sound := PartialSumOrdering.checkCertificate_sound cert checked
  have mappedPermutation : (after.map label).Perm (before.map label) := by
    rw [originalLabels, finalLabels]
    exact sound.2.1
  have permutation := (List.map_perm_map_iff injectiveLabel).mp mappedPermutation
  refine ⟨permutation, terminal_cost_conserved costOrigin cost permutation, ?_⟩
  apply certified_postPhases_nodup
  rw [finalLabels]
  exact sound.1

/-- Mathematical checker acceptance does not refresh a stale source binding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865bc64a18d69d2cf4325229ea08e0931dd0e1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

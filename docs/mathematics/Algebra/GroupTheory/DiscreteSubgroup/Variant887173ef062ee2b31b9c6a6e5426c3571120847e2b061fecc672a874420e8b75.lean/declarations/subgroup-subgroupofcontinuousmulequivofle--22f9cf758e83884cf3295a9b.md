# Subgroup.subgroupOfContinuousMulEquivOfLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9fe2e1b58d8e6b761136a9de087c2d5321d4132675b996e46cd6f11b32dfebf",
  "kind": "def",
  "lexical_name": "Subgroup.subgroupOfContinuousMulEquivOfLe",
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
  "slug": "subgroup-subgroupofcontinuousmulequivofle--22f9cf758e83884cf3295a9b",
  "source": {
    "blob": "346ce87c1ac3b9ffffdb6f7a63d702ec7b228e7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22f9cf758e83884cf3295a9bb169eef6ea35642abbe22a88a329d5873eed8754",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9fe2e1b58d8e6b761136a9de087c2d5321d4132675b996e46cd6f11b32dfebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subgroup.subgroupOfContinuousMulEquivOfLe {H K : Subgroup G} (hHK : H ≤ K) :
    (H.subgroupOf K) ≃ₜ* H :=
  (subgroupOfEquivOfLe hHK).toContinuousMulEquiv (by
    simp only [subgroupOfEquivOfLe, Topology.IsInducing.subtypeVal.isOpen_iff,
      exists_exists_and_eq_and]
    simpa [Set.ext_iff] using fun s ↦ exists_congr
      fun t ↦ and_congr_right fun _ ↦ ⟨fun aux g hgh ↦ aux g (hHK hgh) hgh, by grind⟩)

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346ce87c1ac3b9ffffdb6f7a63d702ec7b228e7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

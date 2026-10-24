# Pi.instIsOrderBornology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e0b539dc21498e5ed90d52b83dbb9d0a4592aff32d0ca3d4cdfd3cb59f1fc4",
  "kind": "instance",
  "lexical_name": "Pi.instIsOrderBornology",
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
  "slug": "pi-instisorderbornology--7463fed16abb5ddabdd56077",
  "source": {
    "blob": "93afbf73aa4aeeb1f598a47e6b90515c427db624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7463fed16abb5ddabdd560773d5023ec1e40d0eb1b0ac3c5069fa2540d43aef8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e0b539dc21498e5ed90d52b83dbb9d0a4592aff32d0ca3d4cdfd3cb59f1fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instIsOrderBornology {ι : Type*} {α : ι → Type*} [∀ i, Preorder (α i)]
    [∀ i, Bornology (α i)] [∀ i, IsOrderBornology (α i)] : IsOrderBornology (∀ i, α i) where
  isBounded_iff_bddBelow_bddAbove s := by
    simp_rw [← forall_isBounded_image_eval_iff, bddBelow_pi, bddAbove_pi, ← forall_and,
      isBounded_iff_bddBelow_bddAbove]

end Preorder

section ConditionallyCompleteLattice
variable [ConditionallyCompleteLattice α] [IsOrderBornology α] {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93afbf73aa4aeeb1f598a47e6b90515c427db624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

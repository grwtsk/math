# compactlyGeneratedSpace_of_isClosed_of_t2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38ba4975-8e9d-2cd6-3863-66e3948366cd",
  "kind": "theorem",
  "lexical_name": "compactlyGeneratedSpace_of_isClosed_of_t2",
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
  "slug": "compactlygeneratedspace-of-isclosed-of-t2--3d8ee1d15c26dca5a7b33740",
  "source": {
    "blob": "d3d32971837ad75ce581df1c767f199fede62fa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d8ee1d15c26dca5a7b33740237751a5943b4d591a960ec291b04c12e11746f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38ba4975-8e9d-2cd6-3863-66e3948366cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactlyGeneratedSpace_of_isClosed_of_t2
    (h : ∀ s, (∀ (K : Set X), IsCompact K → IsClosed (s ∩ K)) → IsClosed s) :
    CompactlyGeneratedSpace X := by
  refine compactlyGeneratedSpace_of_isClosed fun s hs ↦ h s fun K hK ↦ ?_
  rw [Set.inter_comm, ← Subtype.image_preimage_coe]
  apply hK.isClosed.isClosedMap_subtype_val
  have : CompactSpace ↑K := isCompact_iff_compactSpace.1 hK
  exact hs _ Subtype.val continuous_subtype_val

open scoped Set.Notation in
/-- Let `s ⊆ X`. Suppose that `X` is Hausdorff, and that to prove that `s` is open,
it suffices to show that for every compact set `K ⊆ X`, `s ∩ K` is open in `K`.
Then `X` is compactly generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d32971837ad75ce581df1c767f199fede62fa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

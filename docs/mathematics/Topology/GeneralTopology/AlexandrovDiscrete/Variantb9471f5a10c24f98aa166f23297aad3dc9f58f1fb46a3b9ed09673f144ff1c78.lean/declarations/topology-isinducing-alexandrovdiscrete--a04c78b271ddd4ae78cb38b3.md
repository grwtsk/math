# Topology.IsInducing.alexandrovDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68d4106c-6341-9c93-53ed-f9007c3e7cba",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.alexandrovDiscrete",
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
  "slug": "topology-isinducing-alexandrovdiscrete--a04c78b271ddd4ae78cb38b3",
  "source": {
    "blob": "90a71dae6498cde7a9ea5b7fdcaa3b1f56047a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a04c78b271ddd4ae78cb38b3afc334e3c96ed1fe0dc6d744b094ecc744341358",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68d4106c-6341-9c93-53ed-f9007c3e7cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsInducing.alexandrovDiscrete [AlexandrovDiscrete α] {f : β → α} (h : IsInducing f) :
    AlexandrovDiscrete β where
  isOpen_sInter S hS := by
    simp_rw [h.isOpen_iff] at hS ⊢
    choose U hU htU using hS
    refine ⟨_, isOpen_iInter₂ hU, ?_⟩
    simp_rw [preimage_iInter, htU, sInter_eq_biInter]

@[deprecated (since := "2024-10-28")]
alias Inducing.alexandrovDiscrete := IsInducing.alexandrovDiscrete

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a71dae6498cde7a9ea5b7fdcaa3b1f56047a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# IsTransitiveRel.prod_subset_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:021fa5c2-851f-54dc-061f-cfac09d40256",
  "kind": "lemma",
  "lexical_name": "IsTransitiveRel.prod_subset_trans",
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
  "slug": "istransitiverel-prod-subset-trans--a6f8b354ab779cb81d045d0b",
  "source": {
    "blob": "fcf528a132fc9407d9f16afb5f0eb52098416f29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6f8b354ab779cb81d045d0bd0a130a28c1386610f314112fe7fe77ec7b57dfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021fa5c2-851f-54dc-061f-cfac09d40256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTransitiveRel.prod_subset_trans {s : SetRel X X} {t u v : Set X} [s.IsTrans]
    (htu : t ×ˢ u ⊆ s) (huv : u ×ˢ v ⊆ s) (hu : u.Nonempty) :
    t ×ˢ v ⊆ s := by
  rintro ⟨a, b⟩ hab
  simp only [mem_prod] at hab
  obtain ⟨x, hx⟩ := hu
  exact s.trans (@htu ⟨a, x⟩ ⟨hab.left, hx⟩) (@huv ⟨x, b⟩ ⟨hx, hab.right⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf528a132fc9407d9f16afb5f0eb52098416f29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

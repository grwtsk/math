# neighborSet_eq_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40955558-a699-3c4b-bea4-0c9d1970cfd9",
  "kind": "lemma",
  "lexical_name": "neighborSet_eq_of_equiv",
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
  "slug": "neighborset-eq-of-equiv--a8a3542c14a44a1ca4265a57",
  "source": {
    "blob": "167c4f97549036225bf40252b7cb5405405238de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 877,
    "line": 869,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a3542c14a44a1ca4265a576c5efb0dce1fdc8dd5eca6f077e4be2e662a43f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40955558-a699-3c4b-bea4-0c9d1970cfd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 869–877.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neighborSet_eq_of_equiv {v : V} {H : Subgraph G}
    (h : G.neighborSet v ≃ H.neighborSet v) (hfin : (G.neighborSet v).Finite) :
    H.neighborSet v = G.neighborSet v := by
  lift H.neighborSet v to Finset V using h.set_finite_iff.mp hfin with s hs
  lift G.neighborSet v to Finset V using hfin with t ht
  refine congrArg _ <| Finset.eq_of_subset_of_card_le ?_ (Finset.card_eq_of_equiv h).le
  rw [← Finset.coe_subset, hs, ht]
  exact H.neighborSet_subset _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean#L869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167c4f97549036225bf40252b7cb5405405238de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

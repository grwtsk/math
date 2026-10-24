# _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.absorbs_biUnion_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8c278e-dec2-6bfd-ba99-65fdbd4cf608",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.absorbs_biUnion_finset",
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
  "slug": "root-grwtsk-topology-generaltopology-absorbs-variant89d667690e980c4cf6bb--0bdc980493618fdc3b632f59",
  "source": {
    "blob": "e4545e268bb769d269f5530f5c36ba1d4cabff1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bdc980493618fdc3b632f59abcd02c32e648a2115738322cc0ff1e284868cfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8c278e-dec2-6bfd-ba99-65fdbd4cf608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.absorbs_biUnion_finset {ι : Type*} {t : ι → Set α} {I : Finset ι} :
    Absorbs M s (⋃ i ∈ I, t i) ↔ ∀ i ∈ I, Absorbs M s (t i) :=
  I.finite_toSet.absorbs_biUnion

protected alias ⟨_, biUnion_finset⟩ := absorbs_biUnion_finset

end SMul

section AddZero

variable {M E : Type*} [Bornology M] {s₁ s₂ t₁ t₂ : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4545e268bb769d269f5530f5c36ba1d4cabff1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

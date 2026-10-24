# _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.absorbs_biUnion_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e825bdbe-1b2c-b612-f756-3d613020e669",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.absorbs_biUnion_finset",
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
  "slug": "root-grwtsk-topology-generaltopology-absorbs-variant7d08b38460c20950f06e--92943e53b16d3994a078191e",
  "source": {
    "blob": "846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92943e53b16d3994a078191e2763b49c5777f90907b8f6dde39163b0b06d9fed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e825bdbe-1b2c-b612-f756-3d613020e669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.absorbs_biUnion_finset {ι : Type*} {t : ι → Set α} {I : Finset ι} :
    Absorbs M s (⋃ i ∈ I, t i) ↔ ∀ i ∈ I, Absorbs M s (t i) :=
  I.finite_toSet.absorbs_biUnion

protected alias ⟨_, biUnion_finset⟩ := absorbs_biUnion_finset

end SMul

section AddZero

variable {M E : Type*} [Bornology M] {s₁ s₂ t₁ t₂ : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

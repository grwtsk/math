# to_openEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10722cda-b9ec-22bd-2765-56161a2456a5",
  "kind": "theorem",
  "lexical_name": "to_openEmbedding",
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
  "slug": "to-openembedding--573e1579861d0463b336bd06",
  "source": {
    "blob": "4268fa7d860daa2aa74904910f3337891c3a4b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1299,
    "line": 1279,
    "path": "GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:573e1579861d0463b336bd06fbdb8f45d3976d30eb3c2d75e67ed3a52793bf3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10722cda-b9ec-22bd-2765-56161a2456a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1279–1299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_openEmbedding (h : e.source = Set.univ) : OpenEmbedding e := by
  apply openEmbedding_of_continuous_injective_open
  · apply continuous_iff_continuousOn_univ.mpr
    rw [← h]
    exact e.continuousOn
  · apply Set.injective_iff_injOn_univ.mpr
    rw [← h]
    exact e.injOn
  · intro U hU
    simpa only [h, subset_univ, mfld_simps] using e.image_open_of_open hU
#align local_homeomorph.to_open_embedding LocalHomeomorph.to_openEmbedding

end LocalHomeomorph

namespace Homeomorph

variable (e : α ≃ₜ β) (e' : β ≃ₜ γ)

/- Register as simp lemmas that the fields of a local homeomorphism built from a homeomorphism
correspond to the fields of the original homeomorphism. -/
@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean#L1279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4268fa7d860daa2aa74904910f3337891c3a4b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

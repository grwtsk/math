# mem_codiscrete_accPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69fd113f-32ac-c7f7-a671-46226d6ea18b",
  "kind": "lemma",
  "lexical_name": "mem_codiscrete_accPt",
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
  "slug": "mem-codiscrete-accpt--ca470be6b22ffebb3da1c338",
  "source": {
    "blob": "45d7db780c6f6e51ae8d5c4bf115b981e0f92a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca470be6b22ffebb3da1c3383ff161e8b7556da6cddf8f5bbfdadfad675e3980",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69fd113f-32ac-c7f7-a671-46226d6ea18b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_codiscrete_accPt {S : Set X} :
    S ∈ codiscrete X ↔ ∀ x, ¬AccPt x (𝓟 Sᶜ) := by
  simp only [mem_codiscrete, disjoint_iff, AccPt, not_neBot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d7db780c6f6e51ae8d5c4bf115b981e0f92a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

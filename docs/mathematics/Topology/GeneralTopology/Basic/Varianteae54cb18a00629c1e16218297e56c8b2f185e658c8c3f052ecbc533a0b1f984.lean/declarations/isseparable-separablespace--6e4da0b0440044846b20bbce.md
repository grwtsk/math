# IsSeparable.separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3503518-27fb-80f9-9897-8f9350017f92",
  "kind": "theorem",
  "lexical_name": "IsSeparable.separableSpace",
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
  "slug": "isseparable-separablespace--6e4da0b0440044846b20bbce",
  "source": {
    "blob": "50eaa47f96bf02a56789de54082f86cc4cab3e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e4da0b0440044846b20bbce521b52c2e1f1fe07f8499a7a14e09e5dfaa2b3cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3503518-27fb-80f9-9897-8f9350017f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.separableSpace [PseudoMetrizableSpace X] {s : Set X} (hs : IsSeparable s) :
    SeparableSpace s := by
  rcases hs.exists_countable_dense_subset with ⟨t, hts, htc, hst⟩
  lift t to Set s using hts
  refine ⟨⟨t, countable_of_injective_of_countable_image Subtype.coe_injective.injOn htc, ?_⟩⟩
  rwa [IsInducing.subtypeVal.dense_iff, Subtype.forall]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50eaa47f96bf02a56789de54082f86cc4cab3e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

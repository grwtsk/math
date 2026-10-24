# not_separableSpace_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc9a1c4a-8254-b910-23ec-6de495589eca",
  "kind": "theorem",
  "lexical_name": "not_separableSpace_antidiagonal",
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
  "slug": "not-separablespace-antidiagonal--cb6bfc54f1eaf0a86ca535a4",
  "source": {
    "blob": "1300fde046c04861f77d8b7dfab58510bcc62ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb6bfc54f1eaf0a86ca535a460c7b4dd0ed16dba58dffdb5d44619f102c377d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc9a1c4a-8254-b910-23ec-6de495589eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_separableSpace_antidiagonal (c : ℝₗ) :
    ¬SeparableSpace {x : ℝₗ × ℝₗ | x.1 + x.2 = c} := by
  rw [separableSpace_iff_countable, ← Cardinal.mk_le_aleph0_iff, cardinal_antidiagonal, not_le]
  exact Cardinal.aleph0_lt_continuum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1300fde046c04861f77d8b7dfab58510bcc62ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# continuousAt_equivIco

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88180ae9-f3e4-c2da-a55a-c0bde0f3558f",
  "kind": "theorem",
  "lexical_name": "continuousAt_equivIco",
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
  "slug": "continuousat-equivico--1a841b58c2926424d437092c",
  "source": {
    "blob": "dc71366f4c55aaf40d5382f07cce3231dc3986f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a841b58c2926424d437092c0fd24b1ec39b4f11e4eb6b216f3885885a766a92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88180ae9-f3e4-c2da-a55a-c0bde0f3558f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_equivIco (hx : x ≠ a) : ContinuousAt (equivIco p a) x := by
  induction x using QuotientAddGroup.induction_on
  rw [ContinuousAt, Filter.Tendsto, QuotientAddGroup.nhds_eq, Filter.map_map]
  exact (continuousAt_toIcoMod hp.out a <| not_modEq_iff_ne_mod_zmultiples.mpr hx).codRestrict _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc71366f4c55aaf40d5382f07cce3231dc3986f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

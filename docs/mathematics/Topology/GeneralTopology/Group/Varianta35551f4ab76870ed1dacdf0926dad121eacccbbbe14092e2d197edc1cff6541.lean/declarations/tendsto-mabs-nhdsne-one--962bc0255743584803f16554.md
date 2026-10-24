# tendsto_mabs_nhdsNE_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea726c72-3178-209f-171a-93583f70548a",
  "kind": "theorem",
  "lexical_name": "tendsto_mabs_nhdsNE_one",
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
  "slug": "tendsto-mabs-nhdsne-one--962bc0255743584803f16554",
  "source": {
    "blob": "b5e1557bbf58add3f18ebd2979d4850bf32b6ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:962bc0255743584803f16554b9e35a5d98e7ddd41431c78ba2549d7841bf25e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea726c72-3178-209f-171a-93583f70548a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mabs_nhdsNE_one : Tendsto (mabs : G → G) (𝓝[≠] 1) (𝓝[>] 1) :=
  (continuous_mabs.tendsto' (1 : G) 1 mabs_one).inf <|
    tendsto_principal_principal.2 fun _x => one_lt_mabs.2

@[deprecated (since := "2025-03-18")]
alias tendsto_abs_nhdsWithin_zero := tendsto_abs_nhdsNE_zero

/-- In a linearly ordered multiplicative group, the integer powers of an element are dense
iff they are the whole group. -/
@[to_additive "In a linearly ordered additive group, the integer multiples of an element are dense
iff they are the whole group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e1557bbf58add3f18ebd2979d4850bf32b6ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# arccos_eq_arctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40cb3cd2-f0c2-5c3a-04f2-b6b93fbed1a9",
  "kind": "theorem",
  "lexical_name": "arccos_eq_arctan",
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
  "slug": "arccos-eq-arctan--a8ca3fe9c1897681bf7784cb",
  "source": {
    "blob": "77da4ae6756801f991387a08cd4481be4143e1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant2c5c7e8704c392d76eb5a079f0c9484d9a76e6f65911d361702bc8b8379d6575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8ca3fe9c1897681bf7784cb88b5b61f90502711688ad464bacb120491fd6b8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant2c5c7e8704c392d76eb5a079f0c9484d9a76e6f65911d361702bc8b8379d6575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40cb3cd2-f0c2-5c3a-04f2-b6b93fbed1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arccos_eq_arctan (h : 0 < x) : arccos x = arctan (√(1 - x ^ 2) / x) := by
  rw [arccos, eq_comm]
  refine arctan_eq_of_tan_eq ?_ ⟨?_, ?_⟩
  · rw_mod_cast [tan_pi_div_two_sub, tan_arcsin, inv_div]
  · linarith only [arcsin_le_pi_div_two x, pi_pos]
  · linarith only [arcsin_pos.2 h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant2c5c7e8704c392d76eb5a079f0c9484d9a76e6f65911d361702bc8b8379d6575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant2c5c7e8704c392d76eb5a079f0c9484d9a76e6f65911d361702bc8b8379d6575.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77da4ae6756801f991387a08cd4481be4143e1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

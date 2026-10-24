# addOrderOf_coe_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 617,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:715879bf-a4a5-0fca-c4ba-24f6af9e6173",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d8c6ed8-b916-757c-c787-075691b01763",
  "kind": "theorem",
  "lexical_name": "addOrderOf_coe_rat",
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
  "slug": "addorderof-coe-rat--fef4d87ab0815ce0ce5c6bf7",
  "source": {
    "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 617,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef4d87ab0815ce0ce5c6bf7f1ef13457ba24960cac3dcc8a93d14de0f906764",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8c6ed8-b916-757c-c787-075691b01763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addOrderOf_coe_rat {q : ℚ} : addOrderOf (↑(↑q * p) : AddCircle p) = q.den := by
  have : (↑(q.den : ℤ) : 𝕜) ≠ 0 := by
    norm_cast
    exact q.pos.ne.symm
  rw [← q.num_divInt_den, Rat.cast_divInt_of_ne_zero _ this, Int.cast_natCast, Rat.num_divInt_den,
    addOrderOf_div_of_gcd_eq_one' q.pos q.reduced]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

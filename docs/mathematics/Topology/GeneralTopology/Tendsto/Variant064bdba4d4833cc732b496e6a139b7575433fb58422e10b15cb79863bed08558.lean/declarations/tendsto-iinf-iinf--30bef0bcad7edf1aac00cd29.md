# tendsto_iInf_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0925c08-5664-d63b-fdd8-692a6d0d3cc8",
  "kind": "theorem",
  "lexical_name": "tendsto_iInf_iInf",
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
  "slug": "tendsto-iinf-iinf--30bef0bcad7edf1aac00cd29",
  "source": {
    "blob": "02cbee76447f54a768e22d0f005d2d25a6e68715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30bef0bcad7edf1aac00cd294ea642f2637028bb3aab6a650af82ffef249edf5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0925c08-5664-d63b-fdd8-692a6d0d3cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iInf_iInf {f : α → β} {x : ι → Filter α} {y : ι → Filter β}
    (h : ∀ i, Tendsto f (x i) (y i)) : Tendsto f (iInf x) (iInf y) :=
  tendsto_iInf.2 fun i => tendsto_iInf' i (h i)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02cbee76447f54a768e22d0f005d2d25a6e68715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

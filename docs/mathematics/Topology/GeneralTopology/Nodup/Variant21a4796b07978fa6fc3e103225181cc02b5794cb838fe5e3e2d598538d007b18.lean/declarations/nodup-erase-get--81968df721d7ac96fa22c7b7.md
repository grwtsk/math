# Nodup.erase_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0202535-e2b1-09b1-f816-17c76636b1cf",
  "kind": "theorem",
  "lexical_name": "Nodup.erase_get",
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
  "slug": "nodup-erase-get--81968df721d7ac96fa22c7b7",
  "source": {
    "blob": "09e4cfc6cb3bbf32e7adc01457da554a8e69a912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81968df721d7ac96fa22c7b70a50e062b9e15fba36fc0540dcc0beca2590f2d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0202535-e2b1-09b1-f816-17c76636b1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.erase_get [BEq α] [LawfulBEq α] {l : List α} (hl : l.Nodup) (i : Fin l.length) :
    l.erase (l.get i) = l.eraseIdx ↑i := by
  simp [erase_getElem, hl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e4cfc6cb3bbf32e7adc01457da554a8e69a912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

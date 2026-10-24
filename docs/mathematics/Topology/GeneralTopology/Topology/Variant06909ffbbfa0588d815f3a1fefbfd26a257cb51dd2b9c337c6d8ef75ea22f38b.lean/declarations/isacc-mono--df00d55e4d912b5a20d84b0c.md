# IsAcc.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a66d8b-4e47-0585-a6b5-08ba784c3fae",
  "kind": "theorem",
  "lexical_name": "IsAcc.mono",
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
  "slug": "isacc-mono--df00d55e4d912b5a20d84b0c",
  "source": {
    "blob": "ba2974f5702c832a8dbdae18fb014df5ff9d2f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df00d55e4d912b5a20d84b0ca9ebde9d4965d05be48009fdfc8e30690f8eee62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a66d8b-4e47-0585-a6b5-08ba784c3fae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAcc.mono {o : Ordinal} {S T : Set Ordinal} (h : S ⊆ T) (ho : o.IsAcc S) :
    o.IsAcc T := by
  rw [isAcc_iff] at *
  exact ⟨ho.1, fun p plto ↦ (ho.2 p plto).casesOn fun s hs ↦ ⟨s, h hs.1, hs.2⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2974f5702c832a8dbdae18fb014df5ff9d2f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca9d7b3c1f79b3134cf1fb36da4f6a8c025fd64729429218d49be8ee7460606f",
  "kind": "def",
  "lexical_name": "filter",
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
  "slug": "filter--8a99585a59a37eaa8fbb9e4e",
  "source": {
    "blob": "1321606a8ae06d88c818ca1f4bc286ffcff0c044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a99585a59a37eaa8fbb9e4e3dcf07267b7c30cd38666777da0d03971cd3644b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca9d7b3c1f79b3134cf1fb36da4f6a8c025fd64729429218d49be8ee7460606f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def filter (s : Multiset α) : Multiset α :=
  Quot.liftOn s (fun l => (List.filter p l : Multiset α)) fun _l₁ _l₂ h => Quot.sound <| h.filter p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1321606a8ae06d88c818ca1f4bc286ffcff0c044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

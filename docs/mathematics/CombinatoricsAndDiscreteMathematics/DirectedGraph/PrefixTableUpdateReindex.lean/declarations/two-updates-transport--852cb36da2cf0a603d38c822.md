# two_updates_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df6b7942-db81-6538-c26d-242ae00b6438",
  "kind": "theorem",
  "lexical_name": "two_updates_transport",
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
  "slug": "two-updates-transport--852cb36da2cf0a603d38c822",
  "source": {
    "blob": "f8f334e1f5cb3a723a9e1292e174c9aa35b77211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 224,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852cb36da2cf0a603d38c822a963d8463f81f076c43aadc3549e168315c11fcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df6b7942-db81-6538-c26d-242ae00b6438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_updates_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key)
    (first second : List (Key × Occurrence state.root)) :
    transport translation role (update (update state first) second) =
      update (update (transport translation role state)
        (mapOccurrenceRows translation role state.root first))
        (mapOccurrenceRows translation role state.root second) := by
  have hfirst := update_transport translation role hinjective state first
  calc
    _ = update (transport translation role (update state first))
        (mapOccurrenceRows translation role state.root second) :=
      update_transport translation role hinjective (update state first) second
    _ = _ := by
      change (⟨(transport translation role (update state first)).root,
        extendedDictionary (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second),
        extendedNodes (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second),
        (realPacked (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second)).references⟩ : State _ Key) =
        ⟨(update (transport translation role state)
            (mapOccurrenceRows translation role state.root first)).root,
          extendedDictionary (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second),
          extendedNodes (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second),
          (realPacked (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second)).references⟩
      unfold extendedDictionary extendedNodes realPacked basePacked rawPacked
      dsimp only [extendedDictionary]
      rw [congrArg State.dictionary hfirst, congrArg State.nodes hfirst,
        congrArg State.references hfirst]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f334e1f5cb3a723a9e1292e174c9aa35b77211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

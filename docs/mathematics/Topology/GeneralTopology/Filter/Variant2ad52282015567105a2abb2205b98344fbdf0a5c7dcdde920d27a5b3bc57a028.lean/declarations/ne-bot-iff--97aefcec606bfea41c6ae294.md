# ne_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a515ba38-c7a0-8660-7a40-58804e4bcccd",
  "kind": "theorem",
  "lexical_name": "ne_bot_iff",
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
  "slug": "ne-bot-iff--97aefcec606bfea41c6ae294",
  "source": {
    "blob": "ee9234d75da2577c6fba51c3601ecee23c3b1491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 317,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97aefcec606bfea41c6ae2941fd21460d1b52d1a0fc4b448d8cef7ea3533e683",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a515ba38-c7a0-8660-7a40-58804e4bcccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_bot_iff {f : Filter α} (F : f.Realizer) : f ≠ ⊥ ↔ ∀ a : F.σ, (F.F a).Nonempty := by
  rw [not_iff_comm, ← le_bot_iff, F.le_iff Realizer.bot, not_forall]
  simp only [Set.not_nonempty_iff_eq_empty]
  exact ⟨fun ⟨x, e⟩ _ ↦ ⟨x, le_of_eq e⟩, fun h ↦
    let ⟨x, h⟩ := h ()
    ⟨x, le_bot_iff.1 h⟩⟩

end Filter.Realizer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant2ad52282015567105a2abb2205b98344fbdf0a5c7dcdde920d27a5b3bc57a028.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9234d75da2577c6fba51c3601ecee23c3b1491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

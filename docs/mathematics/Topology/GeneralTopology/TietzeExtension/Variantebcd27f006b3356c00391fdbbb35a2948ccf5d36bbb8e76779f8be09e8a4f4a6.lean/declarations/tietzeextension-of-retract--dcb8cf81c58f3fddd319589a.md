# TietzeExtension.of_retract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:653b927f-4507-b6f2-b435-5a16d5f43b3b",
  "kind": "theorem",
  "lexical_name": "TietzeExtension.of_retract",
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
  "slug": "tietzeextension-of-retract--dcb8cf81c58f3fddd319589a",
  "source": {
    "blob": "0d6a245ba8d83c8009f6122661fa19c696a89a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb8cf81c58f3fddd319589a718cd2c8faff3560a32faf77cdce179f92b03e99",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653b927f-4507-b6f2-b435-5a16d5f43b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TietzeExtension.of_retract {Y : Type v} {Z : Type w} [TopologicalSpace Y]
    [TopologicalSpace Z] [TietzeExtension.{u, w} Z] (ι : C(Y, Z)) (r : C(Z, Y))
    (h : r.comp ι = .id Y) : TietzeExtension.{u, v} Y where
  exists_restrict_eq' s hs f := by
    obtain ⟨g, hg⟩ := (ι.comp f).exists_restrict_eq hs
    use r.comp g
    ext1 x
    have := congr(r.comp $(hg))
    rw [← r.comp_assoc ι, h, f.id_comp] at this
    congrm($this x)

/-- Any homeomorphism from a `TietzeExtension` space is one itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d6a245ba8d83c8009f6122661fa19c696a89a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

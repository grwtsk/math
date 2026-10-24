# head_filterMap_of_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cbe7e62-751e-4e1d-9a5e-2e05b57dcd86",
  "kind": "theorem",
  "lexical_name": "head_filterMap_of_eq_some",
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
  "slug": "head-filtermap-of-eq-some--fe5e7317afecf32fc6b1dc15",
  "source": {
    "blob": "320cb9b319d549895b9ccbc5cc2f5256e84577ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1551,
    "line": 1542,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe5e7317afecf32fc6b1dc154b41cc25fdb57dd6adce47fa6c90e604a633ddcb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cbe7e62-751e-4e1d-9a5e-2e05b57dcd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1542–1551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_filterMap_of_eq_some {f : α → Option β} {l : List α} (w : l ≠ []) {b : β} (h : f (l.head w) = some b) :
    (filterMap f l).head ((ne_nil_of_mem (mem_filterMap.2 ⟨_, head_mem w, h⟩))) =
      b := by
  cases l with
  | nil => simp at w
  | cons a l =>
    simp only [head_cons] at h
    simp [h]

@[grind →]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean#L1542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320cb9b319d549895b9ccbc5cc2f5256e84577ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

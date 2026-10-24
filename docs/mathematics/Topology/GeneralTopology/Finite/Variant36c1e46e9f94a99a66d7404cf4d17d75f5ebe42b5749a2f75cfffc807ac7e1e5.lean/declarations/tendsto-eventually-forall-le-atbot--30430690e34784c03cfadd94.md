# Tendsto.eventually_forall_le_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0be3e481-104e-8fbf-2c68-dfa35499363a",
  "kind": "theorem",
  "lexical_name": "Tendsto.eventually_forall_le_atBot",
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
  "slug": "tendsto-eventually-forall-le-atbot--30430690e34784c03cfadd94",
  "source": {
    "blob": "c6afa688a56cc8a6fc39893b4a5fa642d5709aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30430690e34784c03cfadd94360a46bd18036f0c93dbb214c699e847f2dfb9e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0be3e481-104e-8fbf-2c68-dfa35499363a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.eventually_forall_le_atBot [Preorder β] {l : Filter α}
    {p : β → Prop} {f : α → β} (hf : Tendsto f l atBot) (h_evtl : ∀ᶠ x in atBot, p x) :
    ∀ᶠ x in l, ∀ y, y ≤ f x → p y := by
  rw [← Filter.eventually_forall_le_atBot] at h_evtl; exact (h_evtl.comap f).filter_mono hf.le_comap

/-!
### Sequences
-/

/-- If `u` is a sequence which is unbounded above,
then after any point, it reaches a value strictly greater than all previous values.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6afa688a56cc8a6fc39893b4a5fa642d5709aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

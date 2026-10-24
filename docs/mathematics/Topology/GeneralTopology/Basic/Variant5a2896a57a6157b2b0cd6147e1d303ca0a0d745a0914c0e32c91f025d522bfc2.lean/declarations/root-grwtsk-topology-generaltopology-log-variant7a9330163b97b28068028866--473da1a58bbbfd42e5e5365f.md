# _root_.GRWTSK.Topology.GeneralTopology.Log.Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.Finsupp.log_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:306638bd-b2d2-8041-e575-748373f836bf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Log.Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.Finsupp.log_prod",
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
  "slug": "root-grwtsk-topology-generaltopology-log-variant7a9330163b97b28068028866--473da1a58bbbfd42e5e5365f",
  "source": {
    "blob": "0609aec2c81511fa8a97900d12906662d74a8868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:473da1a58bbbfd42e5e5365f6bec453b18ed25fe9bd6b8654cc31d77fbcee772",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:306638bd-b2d2-8041-e575-748373f836bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Topology.GeneralTopology.Log.Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.Finsupp.log_prod {α β : Type*} [Zero β] (f : α →₀ β) (g : α → β → ℝ)
    (hg : ∀ a, g a (f a) = 0 → f a = 0) : log (f.prod g) = f.sum fun a b ↦ log (g a b) :=
  log_prod _ _ fun _x hx h₀ ↦ Finsupp.mem_support_iff.1 hx <| hg _ h₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5a2896a57a6157b2b0cd6147e1d303ca0a0d745a0914c0e32c91f025d522bfc2.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0609aec2c81511fa8a97900d12906662d74a8868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

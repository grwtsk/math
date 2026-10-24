# extremallyDisconnected_of_homeo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e99f653-e826-2f20-711e-9a0ef6567859",
  "kind": "theorem",
  "lexical_name": "extremallyDisconnected_of_homeo",
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
  "slug": "extremallydisconnected-of-homeo--13e6fe432dd2e9cbdb930800",
  "source": {
    "blob": "46fda5d44dcf003b43bda908359c33f2b6336d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e6fe432dd2e9cbdb930800ff34813d45432cc41c624291b838de1c24eadf57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e99f653-e826-2f20-711e-9a0ef6567859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremallyDisconnected_of_homeo {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    [ExtremallyDisconnected X] (e : X ≃ₜ Y) : ExtremallyDisconnected Y where
  open_closure U hU := by
    rw [e.symm.isInducing.closure_eq_preimage_closure_image, Homeomorph.isOpen_preimage]
    exact ExtremallyDisconnected.open_closure _ (e.symm.isOpen_image.mpr hU)

section TotallySeparated

/-- Extremally disconnected spaces are totally separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fda5d44dcf003b43bda908359c33f2b6336d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

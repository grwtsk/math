# frequently_filterAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4022a73b-1f8c-13c6-3ab3-6c7e6f14cf64",
  "kind": "theorem",
  "lexical_name": "frequently_filterAt_iff",
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
  "slug": "frequently-filterat-iff--5c0147b00c2b1f21f78570f4",
  "source": {
    "blob": "125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c0147b00c2b1f21f78570f4bcabb04fa60f0f32a7a613c4bb77ff1f16c33c27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4022a73b-1f8c-13c6-3ab3-6c7e6f14cf64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_filterAt_iff {x : X} {P : Set X → Prop} :
    (∃ᶠ t in v.filterAt x, P t) ↔ ∀ ε > (0 : ℝ), ∃ t ∈ v.setsAt x, t ⊆ closedBall x ε ∧ P t := by
  simp only [(v.filterAt_basis_closedBall x).frequently_iff, ← and_assoc, subset_def, mem_setOf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

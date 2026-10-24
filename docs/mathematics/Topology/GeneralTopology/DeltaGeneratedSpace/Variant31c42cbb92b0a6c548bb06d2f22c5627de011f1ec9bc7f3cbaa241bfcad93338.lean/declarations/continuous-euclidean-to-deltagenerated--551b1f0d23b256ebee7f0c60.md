# continuous_euclidean_to_deltaGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6466d665-2840-24aa-f386-acb2dc4c3b80",
  "kind": "lemma",
  "lexical_name": "continuous_euclidean_to_deltaGenerated",
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
  "slug": "continuous-euclidean-to-deltagenerated--551b1f0d23b256ebee7f0c60",
  "source": {
    "blob": "a10a350e7e184ef78d37f44d48b4c5d06b028722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551b1f0d23b256ebee7f0c60aaca94723411716743d0f7a51a0c73c36773d23d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6466d665-2840-24aa-f386-acb2dc4c3b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma continuous_euclidean_to_deltaGenerated {n : ℕ} {f : (Fin n → ℝ) → X} :
    Continuous[_, deltaGenerated X] f ↔ Continuous f := by
  simp_rw [continuous_iff_coinduced_le]
  refine ⟨fun h ↦ h.trans deltaGenerated_le, fun h ↦ ?_⟩
  simp_rw [deltaGenerated]
  exact le_iSup_of_le (i := ⟨n, f, continuous_iff_coinduced_le.mpr h⟩) le_rfl

/-- `deltaGenerated` is idempotent as a function `TopologicalSpace X → TopologicalSpace X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10a350e7e184ef78d37f44d48b4c5d06b028722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

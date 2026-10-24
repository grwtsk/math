# eq_liftPath_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:586efdc6-e206-d056-3095-53c0e54e2fcb",
  "kind": "lemma",
  "lexical_name": "eq_liftPath_iff'",
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
  "slug": "eq-liftpath-iff--c474468686ca41b05dfa1e10",
  "source": {
    "blob": "563550223778da73d8509d3eb6f87cd99da7cae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c474468686ca41b05dfa1e102ed9d580a3db62df1d0d8ff884b0400d97339da5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:586efdc6-e206-d056-3095-53c0e54e2fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_liftPath_iff' {Γ : C(I,E)} : Γ = cov.liftPath γ e γ_0 ↔ p ∘ Γ = γ ∧ Γ 0 = e := by
  simp_rw [← DFunLike.coe_fn_eq, eq_liftPath_iff, and_iff_right (ContinuousMap.continuous _)]

end path_lifting

section homotopy_lifting
variable (H : C(I × A, X)) (f : C(A, E)) (H_0 : ∀ a, H (0, a) = p (f a))

/-- The existence of `liftHomotopy` satisfying `liftHomotopy_lifts` and `liftHomotopy_zero` is
  the homotopy lifting property for covering maps.
  In other words, a covering map is a Hurewicz fibration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563550223778da73d8509d3eb6f87cd99da7cae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

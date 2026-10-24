# canonicalVisibleArithmetic_shape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd79628b-45df-bef3-9c1f-2733f35eea5c",
  "kind": "theorem",
  "lexical_name": "canonicalVisibleArithmetic_shape",
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
  "slug": "canonicalvisiblearithmetic-shape--04de16932c3cf04944edf5bb",
  "source": {
    "blob": "700259ff0436b89eede082e8eaea36105fc32f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 212,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04de16932c3cf04944edf5bb000efe943b3b7a82ec157707272c38d524dbcf3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd79628b-45df-bef3-9c1f-2733f35eea5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalVisibleArithmetic_shape {X : ℕ} (hX : 3 ≤ X)
    {v : CanonicalFourFamilyRealPacket} (hv : v ∈ CanonicalVisibleArithmeticDifferences X hX) :
    ∃ a : ℝ, v = canonicalVisibleCellPacketThree a := by
  obtain ⟨b, d, rfl⟩ := hv
  have hp (b : Bool) : canonicalFourFamilyRestrictionPacket X
      (if b then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X) =
      canonicalVisibleCellPacketThree (if b then -1 else 0) := by
    cases b
    · change canonicalFourFamilyRestrictionPacket X (canonicalFourFamilyEmptyRestriction X) =
        canonicalVisibleCellPacketThree 0
      rw [canonicalFourFamilyRestrictionPacket_empty]
      funext F c
      simp [canonicalVisibleCellPacketThree]
    · exact canonicalVisible_actual_packet hX
  rw [hp b, hp d]
  refine ⟨(if b then -1 else 0) - (if d then -1 else 0), ?_⟩
  funext F c
  simp only [Pi.sub_apply, canonicalVisibleCellPacketThree]
  split_ifs <;> ring

/-- The actual arithmetic family has zero reconstruction residual at every X>=3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `700259ff0436b89eede082e8eaea36105fc32f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

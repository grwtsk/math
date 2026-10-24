# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4697cc532046d6da76e7c4123a94250fbb37687a296192204cb2a6d6897f443d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a0060f810fda44fc32d825b3",
  "source": {
    "blob": "116b5f89c1f06eefef090e5aa486f37344bf66eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0060f810fda44fc32d825b3c4cfc2940f3b9366ca8c6eaa42906ac1179c32ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4697cc532046d6da76e7c4123a94250fbb37687a296192204cb2a6d6897f443d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {a : ℝ} : DiscreteTopology (AddSubgroup.zmultiples a) := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · rw [AddSubgroup.zmultiples_zero_eq_bot]
    exact Subsingleton.discreteTopology (α := (⊥ : Submodule ℤ ℝ))
  rw [discreteTopology_iff_isOpen_singleton_zero, isOpen_induced_iff]
  refine ⟨ball 0 |a|, isOpen_ball, ?_⟩
  ext ⟨x, hx⟩
  obtain ⟨k, rfl⟩ := AddSubgroup.mem_zmultiples_iff.mp hx
  simp [ha, Real.dist_eq, abs_mul, (by norm_cast : |(k : ℝ)| < 1 ↔ |k| < 1)]

/-- Under the coercion from `ℤ` to `ℝ`, inverse images of compact sets are finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZMultiples/Variant3ef91abb73e7a4201087b6e779b5bb1de0093ed4f62d1be389adc7d25a98ea9b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116b5f89c1f06eefef090e5aa486f37344bf66eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# latticeResidue_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7eb835c-afbe-34ab-fdef-e1a4e000a97d",
  "kind": "theorem",
  "lexical_name": "latticeResidue_kernel",
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
  "slug": "latticeresidue-kernel--d629d02ee769d45e141bb49f",
  "source": {
    "blob": "54a41a4f00873f010b1adc736c7661e5dd252f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d629d02ee769d45e141bb49f219bdd3e754a72696f56363d12acd43f1bce0d82",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7eb835c-afbe-34ab-fdef-e1a4e000a97d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem latticeResidue_kernel (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    LinearMap.ker (latticeResidue a b k) = LinearMap.range (latticeMap a b l hl k) := by
  ext f
  obtain ⟨u, rfl⟩ := (latticeCoordinates a b k).surjective f
  change residue (reverse k) (weight (a * b) k)
      ((latticeCoordinates a b k).symm (latticeCoordinates a b k u)) = 0 ↔
    ∃ g, latticeMap a b l hl k g = latticeCoordinates a b k u
  rw [LinearEquiv.symm_apply_apply, residue_zero_iff, ← integer_image_iff]
  constructor
  · rintro ⟨v, hv⟩
    exact ⟨latticeCoordinates a b k v, by rw [latticeMap_coordinates, hv]⟩
  · rintro ⟨g, hg⟩
    obtain ⟨v, rfl⟩ := (latticeCoordinates a b k).surjective g
    refine ⟨v, (latticeCoordinates a b k).injective ?_⟩
    rw [← latticeMap_coordinates]
    exact hg

/-- The full module structure of the realized cokernel, with both inverse maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a41a4f00873f010b1adc736c7661e5dd252f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

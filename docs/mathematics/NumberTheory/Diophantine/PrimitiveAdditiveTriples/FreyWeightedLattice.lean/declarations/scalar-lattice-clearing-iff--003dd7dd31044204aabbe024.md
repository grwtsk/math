# scalar_lattice_clearing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef54ae76-b4d8-038f-ac6d-f6e81a41a247",
  "kind": "theorem",
  "lexical_name": "scalar_lattice_clearing_iff",
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
  "slug": "scalar-lattice-clearing-iff--003dd7dd31044204aabbe024",
  "source": {
    "blob": "17f4e6c0174cebf8ee5c7f1132a6ad653ef87962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003dd7dd31044204aabbe0249b7230d70d0ad3da48110121dc3897a2803df52d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef54ae76-b4d8-038f-ac6d-f6e81a41a247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_lattice_clearing_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (d : ℤ) :
    (∀ f : stage (a : ℚ) (b : ℚ) k, f ∈ lattice a b k →
      (rationalLift a b l hl k).symm (d • f) ∈ lattice a b k) ↔
      (-(a * b)) ^ k ∣ d := by
  rw [← inverse_clearing_iff a b l hl k d]
  constructor
  · intro h u
    have hu := h (synthesize a b k u) ⟨u, rfl⟩
    have hs : synthesize a b k (d • u) = d • synthesize a b k u :=
      (embedding a b k).map_smul d u
    simpa only [hs] using hu
  · intro h f hf
    obtain ⟨u, rfl⟩ := hf
    have hs : synthesize a b k (d • u) = d • synthesize a b k u :=
      (embedding a b k).map_smul d u
    simpa only [hs] using h u

/-- Native source fixture: rational invertibility is not integral inverse closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f4e6c0174cebf8ee5c7f1132a6ad653ef87962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

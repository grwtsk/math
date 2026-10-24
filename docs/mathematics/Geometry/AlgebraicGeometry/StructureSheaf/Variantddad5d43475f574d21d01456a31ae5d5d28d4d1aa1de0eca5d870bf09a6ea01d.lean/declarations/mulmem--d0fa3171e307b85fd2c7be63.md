# mulMem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24be7f9f-a330-31cd-e9b3-6e0b9e06defc",
  "kind": "theorem",
  "lexical_name": "mulMem'",
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
  "slug": "mulmem--d0fa3171e307b85fd2c7be63",
  "source": {
    "blob": "c12a1efe941e2216f5f2f6721459019d8ee00d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0fa3171e307b85fd2c7be6347f0e70094d5e9c1279e1b3a054bf823c88713e5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24be7f9f-a330-31cd-e9b3-6e0b9e06defc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulMem' (U : (Opens (ProjectiveSpectrum.top 𝒜))ᵒᵖ) (a b : ∀ x : U.unop, at x.1)
    (ha : (isLocallyFraction 𝒜).pred a) (hb : (isLocallyFraction 𝒜).pred b) :
    (isLocallyFraction 𝒜).pred (a * b) := fun x => by
  rcases ha x with ⟨Va, ma, ia, ja, ⟨ra, ra_mem⟩, ⟨sa, sa_mem⟩, wa⟩
  rcases hb x with ⟨Vb, mb, ib, jb, ⟨rb, rb_mem⟩, ⟨sb, sb_mem⟩, wb⟩
  refine'
    ⟨Va ⊓ Vb, ⟨ma, mb⟩, Opens.infLELeft _ _ ≫ ia, ja + jb,
      ⟨ra * rb, SetLike.mul_mem_graded ra_mem rb_mem⟩,
      ⟨sa * sb, SetLike.mul_mem_graded sa_mem sb_mem⟩, fun y => ⟨fun h => _, _⟩⟩
  · cases' (y : ProjectiveSpectrum.top 𝒜).isPrime.mem_or_mem h with h h
    · choose nin _ using wa ⟨y, (Opens.infLELeft Va Vb y).2⟩; exact nin h
    · choose nin _ using wb ⟨y, (Opens.infLERight Va Vb y).2⟩; exact nin h
  · simp only [Pi.mul_apply, RingHom.map_mul]
    choose nin1 hy1 using wa (Opens.infLELeft Va Vb y)
    choose nin2 hy2 using wb (Opens.infLERight Va Vb y)
    rw [ext_iff_val] at hy1 hy2 ⊢
    erw [mul_val, hy1, hy2]
    simp only [val_mk'', mk_mul]
    rfl
#align algebraic_geometry.projective_spectrum.structure_sheaf.section_subring.mul_mem' AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf.SectionSubring.mulMem'

end SectionSubring

section

open SectionSubring

variable {𝒜}

/-- The functions satisfying `isLocallyFraction` form a subring of all dependent functions
`Π x : U, HomogeneousLocalization 𝒜 x`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c12a1efe941e2216f5f2f6721459019d8ee00d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

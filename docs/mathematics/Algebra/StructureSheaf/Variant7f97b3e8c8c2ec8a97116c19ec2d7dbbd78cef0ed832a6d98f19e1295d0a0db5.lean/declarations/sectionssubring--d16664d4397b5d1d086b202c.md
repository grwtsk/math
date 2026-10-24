# sectionsSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08464cc5008d6ff517e1feb38cadb68e0858cc42492b329146949c930794c306",
  "kind": "def",
  "lexical_name": "sectionsSubring",
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
  "slug": "sectionssubring--d16664d4397b5d1d086b202c",
  "source": {
    "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 154,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d16664d4397b5d1d086b202c652b9a72288384a9f9094e8e226560e37b545a40",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08464cc5008d6ff517e1feb38cadb68e0858cc42492b329146949c930794c306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionsSubring (U : (Opens (PrimeSpectrum.Top R))ᵒᵖ) :
    Subring (∀ x : U.unop, Localizations R x) where
  carrier := { f | (isLocallyFraction R).pred f }
  zero_mem' := by
    refine fun x => ⟨unop U, x.2, 𝟙 _, 0, 1, fun y => ⟨?_, ?_⟩⟩
    · rw [← Ideal.ne_top_iff_one]; exact y.1.isPrime.1
    · simp
  one_mem' := by
    refine fun x => ⟨unop U, x.2, 𝟙 _, 1, 1, fun y => ⟨?_, ?_⟩⟩
    · rw [← Ideal.ne_top_iff_one]; exact y.1.isPrime.1
    · simp
  add_mem' := by
    intro a b ha hb x
    rcases ha x with ⟨Va, ma, ia, ra, sa, wa⟩
    rcases hb x with ⟨Vb, mb, ib, rb, sb, wb⟩
    refine ⟨Va ⊓ Vb, ⟨ma, mb⟩, Opens.infLELeft _ _ ≫ ia, ra * sb + rb * sa, sa * sb, ?_⟩
    intro ⟨y, hy⟩
    rcases wa (Opens.infLELeft _ _ ⟨y, hy⟩) with ⟨nma, wa⟩
    rcases wb (Opens.infLERight _ _ ⟨y, hy⟩) with ⟨nmb, wb⟩
    fconstructor
    · intro H; cases y.isPrime.mem_or_mem H <;> contradiction
    · simp only [Opens.apply_mk, Pi.add_apply, RingHom.map_mul, add_mul, RingHom.map_add] at wa wb ⊢
      rw [← wa, ← wb]
      simp only [mul_assoc]
      congr 2
      rw [mul_comm]
  neg_mem' := by
    intro a ha x
    rcases ha x with ⟨V, m, i, r, s, w⟩
    refine ⟨V, m, i, -r, s, ?_⟩
    intro y
    rcases w y with ⟨nm, w⟩
    fconstructor
    · exact nm
    · simp only [RingHom.map_neg, Pi.neg_apply]
      rw [← w]
      simp only [neg_mul]
  mul_mem' := by
    intro a b ha hb x
    rcases ha x with ⟨Va, ma, ia, ra, sa, wa⟩
    rcases hb x with ⟨Vb, mb, ib, rb, sb, wb⟩
    refine ⟨Va ⊓ Vb, ⟨ma, mb⟩, Opens.infLELeft _ _ ≫ ia, ra * rb, sa * sb, ?_⟩
    intro ⟨y, hy⟩
    rcases wa (Opens.infLELeft _ _ ⟨y, hy⟩) with ⟨nma, wa⟩
    rcases wb (Opens.infLERight _ _ ⟨y, hy⟩) with ⟨nmb, wb⟩
    fconstructor
    · intro H; cases y.isPrime.mem_or_mem H <;> contradiction
    · simp only [Opens.apply_mk, Pi.mul_apply, RingHom.map_mul] at wa wb ⊢
      rw [← wa, ← wb]
      simp only [mul_left_comm, mul_assoc, mul_comm]

end StructureSheaf

open StructureSheaf

/-- The structure sheaf (valued in `Type`, not yet `CommRingCat`) is the subsheaf consisting of
functions satisfying `isLocallyFraction`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# awayToSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29c20379c71bd9bf2217c386c161e3ae908667fcbf46a48677b54f5261661ae3",
  "kind": "def",
  "lexical_name": "awayToSection",
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
  "slug": "awaytosection--14712c4334daa898c0afe45d",
  "source": {
    "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 595,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14712c4334daa898c0afe45d1822acc9c809d417fc1fc1c134915ea812152923",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29c20379c71bd9bf2217c386c161e3ae908667fcbf46a48677b54f5261661ae3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def awayToSection (f) : ↧(A⁰_ f) ⟶ (structureSheaf 𝒜).1.obj (op (pbo f)) :=
  CommRingCat.ofHom
    -- Have to hint `S`, otherwise it gets unfolded to `structureSheafInType`
    -- causing `ext` to fail
    (S := (structureSheaf 𝒜).1.obj (op (pbo f)))
  { toFun s :=
      ⟨fun x ↦ HomogeneousLocalization.mapId 𝒜 (Submonoid.powers_le.mpr x.2) s, fun x ↦ by
        obtain ⟨s, rfl⟩ := HomogeneousLocalization.mk_surjective s
        obtain ⟨n, hn : f ^ n = s.den.1⟩ := s.den_mem
        exact ⟨_, x.2, 𝟙 _, s.1, s.2, s.3,
          fun x hsx ↦ x.2 (Ideal.IsPrime.mem_of_pow_mem inferInstance n (hn ▸ hsx)), fun _ ↦ rfl⟩⟩
    map_add' _ _ := by ext; simp only [map_add, HomogeneousLocalization.val_add, Proj.add_apply]
    map_mul' _ _ := by ext; simp only [map_mul, HomogeneousLocalization.val_mul, Proj.mul_apply]
    map_zero' := by ext; simp only [map_zero, HomogeneousLocalization.val_zero, Proj.zero_apply]
    map_one' := by ext; simp only [map_one, HomogeneousLocalization.val_one, Proj.one_apply] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

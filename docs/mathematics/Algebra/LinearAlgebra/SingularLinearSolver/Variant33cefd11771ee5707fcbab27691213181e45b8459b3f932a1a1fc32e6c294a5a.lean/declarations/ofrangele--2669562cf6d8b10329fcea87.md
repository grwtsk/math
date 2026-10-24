# ofRangeLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ead4ef40c9fcd919866026549ae6acb4d410a8223ea8b3d9c233c555614bfbd4",
  "kind": "def",
  "lexical_name": "ofRangeLe",
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
  "slug": "ofrangele--2669562cf6d8b10329fcea87",
  "source": {
    "blob": "760a9dfb99dbd8b1c6799fa62fd4bf4dcaa2ac7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2669562cf6d8b10329fcea87bda3a1fba506abf26e95d2e06e9bd5b5f54a5f5b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ead4ef40c9fcd919866026549ae6acb4d410a8223ea8b3d9c233c555614bfbd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofRangeLe
    (A : (ι → ℝ) →ₗ[ℝ] (ι → ℝ))
    (B : (κ → ℝ) →ₗ[ℝ] (ι → ℝ))
    (h : LinearMap.range B ≤ LinearMap.range A) :
    LinearRangeFactorization A B := by
  let R := LinearMap.range A
  let BtoR : (κ → ℝ) →ₗ[ℝ] R :=
    B.codRestrict R (fun u => h (LinearMap.mem_range_self B u))
  letI : Module.Projective ℝ R :=
    Module.Projective.of_basis (Module.finBasis ℝ R)
  obtain ⟨section, hsection⟩ :=
    A.rangeRestrict.exists_rightInverse_of_surjective A.range_rangeRestrict
  refine
    { solve := section.comp BtoR
      factor := ?_ }
  ext u
  change A (section (BtoR u)) = B u
  have hsection_u := LinearMap.congr_fun hsection (BtoR u)
  exact congrArg Subtype.val hsection_u

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760a9dfb99dbd8b1c6799fa62fd4bf4dcaa2ac7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ca729a8046164f4d413fd47bba495108306e8ecc9ec49ca9d946f54db64dc59",
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
  "slug": "instance--c9c1f5d8fa465fefa148f82a",
  "source": {
    "blob": "c465a0ba0e1a83dca27359dc1087c3ddfc1051d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9c1f5d8fa465fefa148f82ab0bcf38bc13dd45d40f30e7464e898958565f9fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ca729a8046164f4d413fd47bba495108306e8ecc9ec49ca9d946f54db64dc59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (K₁ : CochainComplex C₁ ℤ) :
    (F.map₂CochainComplex.obj K₁).CommShift ℤ where
  commShiftIso n :=
    NatIso.ofComponents (fun K₂ ↦ CochainComplex.mapBifunctorShift₂Iso K₁ K₂ F n)
  commShiftIso_zero := by
    ext K₂ n
    dsimp
    ext p q h
    simp [CochainComplex.ι_mapBifunctorShift₂Iso_hom_f _ _ F 0 p q n h q n (by lia) (by lia),
      CochainComplex.shiftFunctorZero_eq]
  commShiftIso_add a b := by
    ext K₂ n
    dsimp
    ext p q h
    dsimp at h
    simp [CochainComplex.ι_mapBifunctorShift₂Iso_hom_f _ _ F (a + b) p q n h
        (q + a + b) (n + a + b) (by lia) (by lia),
      CochainComplex.ι_mapBifunctorShift₂Iso_hom_f_assoc _ _ F b p q n h _ _ rfl rfl,
      CochainComplex.ι_mapBifunctorShift₂Iso_hom_f_assoc _ _ F a p (q + b) (n + b)
        (by lia) (q + a + b) (n + a + b) (by lia) (by lia), smul_smul,
        ← Int.negOnePow_add, CochainComplex.shiftFunctorAdd_eq,
        add_comm (p * b), mul_add, XIsoOfEq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c465a0ba0e1a83dca27359dc1087c3ddfc1051d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

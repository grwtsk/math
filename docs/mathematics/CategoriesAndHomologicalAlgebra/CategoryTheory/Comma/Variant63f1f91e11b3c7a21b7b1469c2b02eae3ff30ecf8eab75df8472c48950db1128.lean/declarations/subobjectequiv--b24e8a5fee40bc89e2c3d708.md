# subobjectEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d8ee9e796cf57825bdae7308db49cc08b45464a7baa38aaefc5cf2f7052cd41",
  "kind": "def",
  "lexical_name": "subobjectEquiv",
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
  "slug": "subobjectequiv--b24e8a5fee40bc89e2c3d708",
  "source": {
    "blob": "b5a5e4a688cbc14ef48a67648694a734977a53e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b24e8a5fee40bc89e2c3d7082d3066a279928c8852fee5b2550cf83ab5083ffd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d8ee9e796cf57825bdae7308db49cc08b45464a7baa38aaefc5cf2f7052cd41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subobjectEquiv [HasFiniteLimits C] [PreservesFiniteLimits T] (A : StructuredArrow S T) :
    Subobject A ≃o { P : Subobject A.right // ∃ q, q ≫ T.map P.arrow = A.hom } where
  toFun P := ⟨projectSubobject P, projectSubobject_factors P⟩
  invFun P := liftSubobject P.val P.prop.choose_spec
  left_inv _ := lift_projectSubobject _ _
  right_inv P := Subtype.ext (by simp only [liftSubobject, homMk_right, projectSubobject_mk,
      Subobject.mk_arrow, Subtype.coe_eta])
  map_rel_iff' := by
    apply Subobject.ind₂
    intro P Q f g hf hg
    refine ⟨fun h => Subobject.mk_le_mk_of_comm ?_ ?_, fun h => ?_⟩
    · exact homMk (Subobject.ofMkLEMk _ _ h)
        ((cancel_mono (T.map g.right)).1 (by simp [← T.map_comp]))
    · simp
    · refine Subobject.mk_le_mk_of_comm (Subobject.ofMkLEMk _ _ h).right ?_
      exact congr_arg CommaMorphism.right (Subobject.ofMkLEMk_comp h)

/-- If `C` is well-powered and complete and `T` preserves limits, then `StructuredArrow S T` is
    well-powered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a5e4a688cbc14ef48a67648694a734977a53e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

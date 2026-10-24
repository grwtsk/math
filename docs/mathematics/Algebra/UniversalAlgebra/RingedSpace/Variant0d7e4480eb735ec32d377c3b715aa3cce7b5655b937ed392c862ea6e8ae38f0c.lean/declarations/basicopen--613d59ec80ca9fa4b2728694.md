# basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bf280d7d9bb41adea668c1101101aff8becf9228656aab08a12ea87f955e49d",
  "kind": "def",
  "lexical_name": "basicOpen",
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
  "slug": "basicopen--613d59ec80ca9fa4b2728694",
  "source": {
    "blob": "2e2437950591d8597a199a7ff6dcee555cb86b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 141,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:613d59ec80ca9fa4b2728694c2d458164c0ef2d99177a03cdf839c0c33eab74b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bf280d7d9bb41adea668c1101101aff8becf9228656aab08a12ea87f955e49d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def basicOpen {U : Opens X} (f : X.presheaf.obj (op U)) : Opens X where
  -- Porting note : `coe` does not work
  carrier := Subtype.val '' { x : U | IsUnit (X.presheaf.germ x f) }
  is_open' := by
    rw [isOpen_iff_forall_mem_open]
    rintro _ ⟨x, hx, rfl⟩
    obtain ⟨V, i, hxV, hf⟩ := X.isUnit_res_of_isUnit_germ U f x hx
    use V.1
    refine' ⟨_, V.2, hxV⟩
    intro y hy
    use (⟨y, i.le hy⟩ : U)
    rw [Set.mem_setOf_eq]
    constructor
    · convert RingHom.isUnit_map (X.presheaf.germ ⟨y, hy⟩) hf
      exact (X.presheaf.germ_res_apply i ⟨y, hy⟩ f).symm
    · rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.RingedSpace.basic_open AlgebraicGeometry.RingedSpace.basicOpen

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2437950591d8597a199a7ff6dcee555cb86b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

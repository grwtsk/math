# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16bb296c2e562f3c97890b4f32e5f3a00247865a6e4fc02b46c6f96a70f79fc6",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--82e0fe67c363dfb865e0e9eb",
  "source": {
    "blob": "ad444d30364f5cf7c5971b091bba59da9d447191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82e0fe67c363dfb865e0e9ebabea43534a36e554034cbad97bd26155056139e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16bb296c2e562f3c97890b4f32e5f3a00247865a6e4fc02b46c6f96a70f79fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map {R A B L L' : Type*} [CommRing R] [CommRing A] [Algebra R A] [CommRing B] [Algebra R B]
    [LieRing L] [LieAlgebra R L] [LieRing L'] [LieAlgebra R L'] (f : A →ₐ[R] B) (g : L →ₗ⁅R⁆ L') :
    A ⊗[R] L →ₗ⁅R⁆ B ⊗[R] L' :=
  { TensorProduct.map f.toLinearMap g with
    map_lie' {x y} := by
      simp only [bracket_def, AddHom.toFun_eq_coe, LinearMap.coe_toAddHom]
      refine x.inductionOn ?_ ?_
      · intro _ _
        refine y.inductionOn (fun _ _ ↦ by simp) (fun _ _ h1 h2 ↦ by simp [h1, h2])
      · intro _ _
        refine y.inductionOn (fun _ _ h ↦ by simp [h]) (by simp_all) }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad444d30364f5cf7c5971b091bba59da9d447191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

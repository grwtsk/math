# leftHomologyData'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6dfee5e418aeb2a5dc00c3441b1f5704ece1aa43e1296c43ff797f1f56dc782",
  "kind": "def",
  "lexical_name": "leftHomologyData'",
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
  "slug": "lefthomologydata--f17a5e5e461922a037f4488f",
  "source": {
    "blob": "d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f17a5e5e461922a037f4488f70a4de615ebae45d9f4a7659b9e626da1e1a2210",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6dfee5e418aeb2a5dc00c3441b1f5704ece1aa43e1296c43ff797f1f56dc782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftHomologyData' (hm : n + 1 = m) (hp : m + 1 = p) :
    ((HomComplex K L).sc' n m p).LeftHomologyData where
  K := ↧(Cocycle K L m)
  H := ↧(CohomologyClass K L m)
  i := AddCommGrpCat.ofHom (Cocycle.toCochainAddMonoidHom K L m)
  π := AddCommGrpCat.ofHom (CohomologyClass.mkAddMonoidHom K L m)
  wi := by cat_disch
  hi := Cocycle.isKernel K L _ _ hp
  wπ := by
    ext x
    dsimp
    rw [CohomologyClass.mk_eq_zero_iff]
    exact ⟨n, hm, x, rfl⟩
  hπ :=
    Cofork.IsColimit.mk _
      (fun s ↦ AddCommGrpCat.ofHom (CohomologyClass.descAddMonoidHom s.π.hom
        (by
          rintro ⟨_, _⟩ ⟨q, hq, y, rfl⟩
          obtain rfl : n = q := by lia
          simpa only [zero_comp] using! ConcreteCategory.congr_hom s.condition y)))
      (fun s ↦ rfl)
      (fun s l hl ↦ by
        ext x
        obtain ⟨y, rfl⟩ := x.mk_surjective
        simpa using! ConcreteCategory.congr_hom hl y)

/-- `CohomologyClass K L m` identifies to the cohomology of the complex `HomComplex K L`
in degree `m`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

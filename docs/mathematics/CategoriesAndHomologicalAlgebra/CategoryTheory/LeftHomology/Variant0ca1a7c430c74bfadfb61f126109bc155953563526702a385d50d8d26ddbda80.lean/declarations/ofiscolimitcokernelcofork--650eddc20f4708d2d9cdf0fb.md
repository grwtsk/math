# ofIsColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ac283f132da02ab186f7eb702e9f55df1f01550495a95bad8129fca35abf75a",
  "kind": "def",
  "lexical_name": "ofIsColimitCokernelCofork",
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
  "slug": "ofiscolimitcokernelcofork--650eddc20f4708d2d9cdf0fb",
  "source": {
    "blob": "09103be0097f0884291ab0600425a78927802c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 364,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:650eddc20f4708d2d9cdf0fbeee17a429940d8e595f8714ccb420da17c1efb45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ac283f132da02ab186f7eb702e9f55df1f01550495a95bad8129fca35abf75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsColimitCokernelCofork (φ : S₁ ⟶ S₂)
    (hg₁ : S₁.g = 0) (c₁ : CokernelCofork S₁.f) (hc₁ : IsColimit c₁)
    (hg₂ : S₂.g = 0) (c₂ : CokernelCofork S₂.f) (hc₂ : IsColimit c₂) (f : c₁.pt ⟶ c₂.pt)
    (comm : φ.τ₂ ≫ c₂.π = c₁.π ≫ f) :
    LeftHomologyMapData φ (LeftHomologyData.ofIsColimitCokernelCofork S₁ hg₁ c₁ hc₁)
      (LeftHomologyData.ofIsColimitCokernelCofork S₂ hg₂ c₂ hc₂) where
  φK := φ.τ₂
  φH := f
  commπ := comm.symm
  commf' := by simp only [LeftHomologyData.ofIsColimitCokernelCofork_f', φ.comm₁₂]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- When `S₁.f` and `S₂.f` are zero and we have chosen limit kernel forks `c₁` and `c₂`
for `S₁.g` and `S₂.g` respectively, the action on left homology of a morphism `φ : S₁ ⟶ S₂` of
short complexes is given by the unique morphism `f : c₁.pt ⟶ c₂.pt` such that
`c₁.ι ≫ φ.τ₂ = f ≫ c₂.ι`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09103be0097f0884291ab0600425a78927802c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

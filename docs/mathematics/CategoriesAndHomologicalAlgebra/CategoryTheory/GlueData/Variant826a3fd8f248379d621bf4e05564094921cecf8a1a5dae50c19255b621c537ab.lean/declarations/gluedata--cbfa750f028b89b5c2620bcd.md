# GlueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed0b4fa3a410dc6df20c40a1250ea14a0b18e86f8612f0e8c78ee4762d3dcca6",
  "kind": "structure",
  "lexical_name": "GlueData",
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
  "slug": "gluedata--cbfa750f028b89b5c2620bcd",
  "source": {
    "blob": "8822cfa8d52539ee4d88d6342d1e83f9b063307e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbfa750f028b89b5c2620bcdb223d37e8fa910cf32e937e7ad569113f8a0d52f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed0b4fa3a410dc6df20c40a1250ea14a0b18e86f8612f0e8c78ee4762d3dcca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlueData where
  /-- The index type `J` of a gluing datum -/
  J : Type v
  /-- For each `i : J`, an object `U i` -/
  U : J → C
  /-- For each `i j : J`, an object `V i j` -/
  V : J × J → C
  /-- For each `i j : J`, a monomorphism `f i j : V i j ⟶ U i` -/
  f : ∀ i j, V (i, j) ⟶ U i
  f_mono : ∀ i j, Mono (f i j) := by infer_instance
  f_hasPullback : ∀ i j k, HasPullback (f i j) (f i k) := by infer_instance
  f_id : ∀ i, IsIso (f i i) := by infer_instance
  /-- For each `i j : J`, a transition map `t i j : V i j ⟶ V j i` -/
  t : ∀ i j, V (i, j) ⟶ V (j, i)
  t_id : ∀ i, t i i = 𝟙 _
  /-- The morphism via which `V i j ×[U i] V i k ⟶ V i j ⟶ V j i` factors through
  `V j k ×[U j] V j i ⟶ V j i` -/
  t' : ∀ i j k, pullback (f i j) (f i k) ⟶ pullback (f j k) (f j i)
  t_fac : ∀ i j k, t' i j k ≫ pullback.snd _ _ = pullback.fst _ _ ≫ t i j
  cocycle : ∀ i j k, t' i j k ≫ t' j k i ≫ t' k i j = 𝟙 _

attribute [simp] GlueData.t_id

attribute [instance] GlueData.f_id GlueData.f_mono GlueData.f_hasPullback

attribute [reassoc] GlueData.t_fac GlueData.cocycle

namespace GlueData

variable {C}
variable (D : GlueData C)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8822cfa8d52539ee4d88d6342d1e83f9b063307e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

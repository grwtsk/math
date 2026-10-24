# gluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b241f64100250a9ced5220f8f64bc51e58e21e762177451e797c102c6505410",
  "kind": "def",
  "lexical_name": "gluing",
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
  "slug": "gluing--3a668a64dc71dfef83f198b7",
  "source": {
    "blob": "9d2866b25edea2b5438d6659634844a94c5b2d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 207,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a668a64dc71dfef83f198b78068b75d7f6ec81b857de51204562e41f76411d0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b241f64100250a9ced5220f8f64bc51e58e21e762177451e797c102c6505410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gluing : Scheme.GlueData.{u} where
  J := 𝒰.I₀
  U i := pullback (𝒰.f i ≫ f) g
  V := fun ⟨i, j⟩ => v 𝒰 f g i j
  -- `p⁻¹(Uᵢ ∩ Uⱼ)` where `p : Uᵢ ×[Z] Y ⟶ Uᵢ ⟶ X`.
  f _ _ := pullback.fst _ _
  f_id _ := inferInstance
  f_open := inferInstance
  t i j := t 𝒰 f g i j
  t_id i := t_id 𝒰 f g i
  t' i j k := t' 𝒰 f g i j k
  t_fac i j k := by
    apply pullback.hom_ext
    on_goal 1 => apply pullback.hom_ext
    all_goals
      simp only [t'_snd_fst_fst, t'_snd_fst_snd, t'_snd_snd, t_fst_fst, t_fst_snd, t_snd,
        Category.assoc]
  cocycle i j k := cocycle 𝒰 f g i j k

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2866b25edea2b5438d6659634844a94c5b2d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

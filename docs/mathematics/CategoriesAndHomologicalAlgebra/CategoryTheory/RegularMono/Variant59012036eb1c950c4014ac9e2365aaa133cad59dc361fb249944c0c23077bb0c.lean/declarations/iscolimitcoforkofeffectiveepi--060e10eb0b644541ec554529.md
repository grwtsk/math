# isColimitCoforkOfEffectiveEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a71a875b7393e7152c61b0474bc7d1da01a279bf67c7d2792965bfa52710a1",
  "kind": "def",
  "lexical_name": "isColimitCoforkOfEffectiveEpi",
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
  "slug": "iscolimitcoforkofeffectiveepi--060e10eb0b644541ec554529",
  "source": {
    "blob": "224c3ae61f1772c8991abfefee0c4e681dc5b75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 500,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060e10eb0b644541ec554529378726dc3a99d613284d3ad866e61fbad00b1cb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a71a875b7393e7152c61b0474bc7d1da01a279bf67c7d2792965bfa52710a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoforkOfEffectiveEpi {B X : C} (f : X ⟶ B) [EffectiveEpi f]
    (c : PullbackCone f f) (hc : IsLimit c) :
    IsColimit (Cofork.ofπ f c.condition) where
  desc s := EffectiveEpi.desc f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
      simp only [Cofork.app_one_eq_π]
      rw [← PullbackCone.IsLimit.lift_snd hc g₁ g₂ hg, Category.assoc,
        ← Cofork.app_zero_eq_comp_π_right]
      simp)
  fac s := by
    have := EffectiveEpi.fac f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
      simp only [Cofork.app_one_eq_π]
      rw [← PullbackCone.IsLimit.lift_snd hc g₁ g₂ hg,
        Category.assoc, ← Cofork.app_zero_eq_comp_π_right]
      simp)
    rintro (_ | _)
    all_goals simp_all
  uniq _ _ h := EffectiveEpi.uniq f _ _ _ (h WalkingParallelPair.one)

/-- An effective epi which has a kernel pair is a regular epi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c3ae61f1772c8991abfefee0c4e681dc5b75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

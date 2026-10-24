# ofArrows_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0231bda2-10ca-af57-e502-212f967e96a5",
  "kind": "theorem",
  "lexical_name": "ofArrows_bind",
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
  "slug": "ofarrows-bind--a7b56322c58be2a033024caa",
  "source": {
    "blob": "c608b66f79d2476f71be004df68104da609bc11a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7b56322c58be2a033024caab145f2ae410bf6cd210f00809d9b2c260103058a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0231bda2-10ca-af57-e502-212f967e96a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofArrows_bind {ι : Type*} (Z : ι → C) (g : ∀ i : ι, Z i ⟶ X)
    (j : ∀ ⦃Y⦄ (f : Y ⟶ X), ofArrows Z g f → Type*) (W : ∀ ⦃Y⦄ (f : Y ⟶ X) (H), j f H → C)
    (k : ∀ ⦃Y⦄ (f : Y ⟶ X) (H i), W f H i ⟶ Y) :
    ((ofArrows Z g).bind fun _ f H => ofArrows (W f H) (k f H)) =
      ofArrows (fun i : Σi, j _ (ofArrows.mk i) => W (g i.1) _ i.2) fun ij =>
        k (g ij.1) _ ij.2 ≫ g ij.1 := by
  funext Y
  ext f
  constructor
  · rintro ⟨_, _, _, ⟨i⟩, ⟨i'⟩, rfl⟩
    exact ofArrows.mk (Sigma.mk _ _)
  · rintro ⟨i⟩
    exact bind_comp _ (ofArrows.mk _) (ofArrows.mk _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c608b66f79d2476f71be004df68104da609bc11a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# to_product_injective_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3a9f65-a866-bb57-8239-53420c164e9c",
  "kind": "theorem",
  "lexical_name": "to_product_injective_of_isLimit",
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
  "slug": "to-product-injective-of-islimit--c17e2b261295961882c1c5b4",
  "source": {
    "blob": "fef9030ff824c6ccecd71f3939bd7978cc96efb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2634e77ff65aa840eea04c0931c87709fb0a306a63e6eacb1f2dbbfb1e15ed67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c17e2b261295961882c1c5b43e9e31d2c13188cec7342c2298535df3e9d92edf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2634e77ff65aa840eea04c0931c87709fb0a306a63e6eacb1f2dbbfb1e15ed67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3a9f65-a866-bb57-8239-53420c164e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_product_injective_of_isLimit {D : Cone F} (hD : IsLimit D) :
    Function.Injective fun (x : ToType D.pt) (j : J) => D.π.app j x := by
  let E := (forget C).mapCone D
  let hE : IsLimit E := isLimitOfPreserves _ hD
  let G := Types.limitCone.{w, v} (F ⋙ forget C)
  let hG := Types.limitConeIsLimit.{w, v} (F ⋙ forget C)
  let T : E.pt ≅ G.pt := hE.conePointUniqueUpToIso hG
  change Function.Injective (T.hom ≫ fun x j => G.π.app j x)
  have h : Function.Injective T.hom := by
    intro a b h
    suffices T.inv (T.hom a) = T.inv (T.hom b) by simpa
    rw [h]
  suffices Function.Injective fun (x : G.pt) j => G.π.app j x by exact this.comp h
  apply Subtype.ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2634e77ff65aa840eea04c0931c87709fb0a306a63e6eacb1f2dbbfb1e15ed67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2634e77ff65aa840eea04c0931c87709fb0a306a63e6eacb1f2dbbfb1e15ed67.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef9030ff824c6ccecd71f3939bd7978cc96efb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43bf04b7a549a6800f476ce9b4ec93bd621461c034f3b140be87bc7b3e01bc47",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--79b051a89cac884b5b9a7f9a",
  "source": {
    "blob": "30cfa82be70523ff568e1f082bc52d0c9d452c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79b051a89cac884b5b9a7f9a657f83c3a08cf996eb951574439608b3b21d2030",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43bf04b7a549a6800f476ce9b4ec93bd621461c034f3b140be87bc7b3e01bc47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [hc : IsConnected J] : IsConnected (ULiftHom.{v₂} (ULift.{u₂} J)) := by
  have : Nonempty (ULiftHom.{v₂} (ULift.{u₂} J)) := by simp [ULiftHom, hc.is_nonempty]
  apply IsConnected.of_induct
  rintro p hj₀ h ⟨j⟩
  let p' : Set J := {j : J | p ⟨j⟩}
  have hj₀' : Classical.choice hc.is_nonempty ∈ p' := by
    simp only [(eq_self p')]
    exact hj₀
  apply induct_on_objects p' hj₀' @fun _ _ f =>
    h ((ULiftHomULiftCategory.equiv J).functor.map f)

/-- Another induction principle for `IsPreconnected J`:
given a type family `Z : J → Sort*` and
a rule for transporting in *both* directions along a morphism in `J`,
we can transport an `x : Z j₀` to a point in `Z j` for any `j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30cfa82be70523ff568e1f082bc52d0c9d452c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

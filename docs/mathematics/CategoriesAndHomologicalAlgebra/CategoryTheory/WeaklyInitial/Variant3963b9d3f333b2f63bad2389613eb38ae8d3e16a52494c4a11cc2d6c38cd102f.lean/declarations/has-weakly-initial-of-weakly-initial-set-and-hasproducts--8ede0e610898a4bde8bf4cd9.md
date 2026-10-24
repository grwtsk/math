# has_weakly_initial_of_weakly_initial_set_and_hasProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ae691c9-faec-a637-c475-ed2649c20e88",
  "kind": "theorem",
  "lexical_name": "has_weakly_initial_of_weakly_initial_set_and_hasProducts",
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
  "slug": "has-weakly-initial-of-weakly-initial-set-and-hasproducts--8ede0e610898a4bde8bf4cd9",
  "source": {
    "blob": "7819afda28030841d1b706cb6933cde8503c0b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ede0e610898a4bde8bf4cd9c5e1d55479af23f81f605470d9884c33539055c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae691c9-faec-a637-c475-ed2649c20e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_weakly_initial_of_weakly_initial_set_and_hasProducts [HasProducts.{w} C] {ι : Type w}
    {B : ι → C} (hB : ∀ A : C, ∃ i, Nonempty (B i ⟶ A)) : ∃ T : C, ∀ X, Nonempty (T ⟶ X) :=
  ⟨∏ᶜ B, fun X => ⟨Pi.π _ _ ≫ (hB X).choose_spec.some⟩⟩

/-- If `C` has (small) wide equalizers and a weakly initial object, then it has an initial object.

The initial object is constructed as the wide equalizer of all endomorphisms on the given weakly
initial object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7819afda28030841d1b706cb6933cde8503c0b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

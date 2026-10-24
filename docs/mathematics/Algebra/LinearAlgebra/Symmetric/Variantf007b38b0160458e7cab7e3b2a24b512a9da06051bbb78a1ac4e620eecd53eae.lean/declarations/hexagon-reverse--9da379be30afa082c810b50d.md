# hexagon_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:882368d2-9510-c38f-a9c1-5a5bf209fd8d",
  "kind": "theorem",
  "lexical_name": "hexagon_reverse",
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
  "slug": "hexagon-reverse--9da379be30afa082c810b50d",
  "source": {
    "blob": "29239d844297654f8a7d4a8eb1d76333074269b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da379be30afa082c810b50d272688a224dc437bf4cc3b1c8d2cd343908468ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:882368d2-9510-c38f-a9c1-5a5bf209fd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hexagon_reverse (X Y Z : ModuleCat.{u} R) :
    (α_ X Y Z).inv ≫ (braiding _ Z).hom ≫ (α_ Z X Y).inv =
      X ◁ (Y.braiding Z).hom ≫ (α_ X Z Y).inv ≫ (X.braiding Z).hom ▷ Y := by
  apply (cancel_epi (α_ X Y Z).hom).1
  ext : 1
  apply TensorProduct.ext_threefold
  intro x y z
  rfl

attribute [local ext] TensorProduct.ext

/-- The symmetric monoidal structure on `Module R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29239d844297654f8a7d4a8eb1d76333074269b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

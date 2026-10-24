# tensorCotangentEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:953f57a5e5054955943af8426906264faf1ea20e8ff5b3dd8bb0aea5777d21f8",
  "kind": "def",
  "lexical_name": "tensorCotangentEquiv",
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
  "slug": "tensorcotangentequiv--380c29b055f51bff966f5583",
  "source": {
    "blob": "1b2a913bce2ee7585e812cbb9f2c8cb89c0dc314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:380c29b055f51bff966f5583c4a1461e3d2b2e5651a766407ce62b233512ac19",
  "verification": {
    "reference": "docs/verification/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:953f57a5e5054955943af8426906264faf1ea20e8ff5b3dd8bb0aea5777d21f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorCotangentEquiv [Module.Flat R T] :
    T ⊗[R] I.Cotangent ≃ₗ[T]
      (I.map (Algebra.TensorProduct.includeRight.toRingHom : _ →+* T ⊗[R] S)).Cotangent :=
  LinearEquiv.ofBijective (I.tensorCotangentHom R T)
    ⟨I.tensorCotangentHom_injective_of_flat R T, I.tensorCotangentHom_surjective R T⟩

-- TODO: make this @[simp] when `Ideal.map` is refactored to only take `RingHom`s
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2a913bce2ee7585e812cbb9f2c8cb89c0dc314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

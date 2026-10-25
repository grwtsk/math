# ofDense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e64ceae656c0a70ec58489eb50705ac40df0a171ac9e2830a352d86f2ca54d93",
  "kind": "def",
  "lexical_name": "ofDense",
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
  "slug": "ofdense--d7e8e5d3cbe983cfd3ac3989",
  "source": {
    "blob": "dedfd0ed6348f5d42b435673211a6bc66660c57c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 514,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7e8e5d3cbe983cfd3ac3989dd7becd9b9ce39349b2141aa1af4b42d9213bd34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e64ceae656c0a70ec58489eb50705ac40df0a171ac9e2830a352d86f2ca54d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDense {M N} [Semigroup M] [Semigroup N] {s : Set M} (f : M → N) (hs : closure s = ⊤)
    (hmul : ∀ (x), ∀ y ∈ s, f (x * y) = f x * f y) :
    M →ₙ* N where
  toFun := f
  map_mul' x y :=
    dense_induction y hs (fun y hy x => hmul x y hy)
      (fun y₁ y₂ h₁ h₂ x => by simp only [← mul_assoc, h₁, h₂]) x
#align mul_hom.of_mdense MulHom.ofDense
#align add_hom.of_mdense AddHom.ofDense

/-- Let `s` be a subset of an additive semigroup `M` such that the closure of `s` is the whole
semigroup.  Then `AddHom.ofDense` defines an additive homomorphism from `M` asking for a proof
of `f (x + y) = f x + f y` only for `y ∈ s`. -/
add_decl_doc AddHom.ofDense

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedfd0ed6348f5d42b435673211a6bc66660c57c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

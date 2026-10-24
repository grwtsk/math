# algHomEquivSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18fb4cde08550e93bdc6fcbf37998c608e17e2237c3e2727af590b5c74d8d454",
  "kind": "def",
  "lexical_name": "algHomEquivSigma",
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
  "slug": "alghomequivsigma--0e45c2912716b4e3b9d604f0",
  "source": {
    "blob": "51761c69bbaa1cdf2e39e4e97eded3ca38189da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e45c2912716b4e3b9d604f02cc78769d28e0a72b4b0aa960ea9a7bc50a59e35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18fb4cde08550e93bdc6fcbf37998c608e17e2237c3e2727af590b5c74d8d454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algHomEquivSigma :
    (C →ₐ[A] D) ≃ Σf : B →ₐ[A] D, @AlgHom B C D _ _ _ _ f.toRingHom.toAlgebra where
  toFun f := ⟨f.restrictDomain B, f.extendScalars B⟩
  invFun fg :=
    let _ := fg.1.toRingHom.toAlgebra
    fg.2.restrictScalars A
  left_inv f := by
    dsimp only
    ext
    rfl
  right_inv := by
    rintro ⟨⟨⟨⟨⟨f, _⟩, _⟩, _⟩, _⟩, ⟨⟨⟨⟨g, _⟩, _⟩, _⟩, hg⟩⟩
    obtain rfl : f = fun x => g (algebraMap B C x) := by
      ext x
      exact (hg x).symm
    rfl

end AlgHomTower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant30b63949c366891ee561866d3234454e96c2b6de59535e45d44146c5cf1b2394.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51761c69bbaa1cdf2e39e4e97eded3ca38189da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

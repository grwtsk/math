# ThreeTypicalDeltaOperation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc1150ee22da3959a001691ea42cff34b77fe2d2d6b8183ab857a14b4a28ae2",
  "kind": "structure",
  "lexical_name": "ThreeTypicalDeltaOperation",
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
  "slug": "threetypicaldeltaoperation--5c62c9ba7404f5f26cfb5a4a",
  "source": {
    "blob": "2fd913c572bfc9e159bf1c868b98c567e0c22f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant26a3abb0346d3e6c8f40800ede3d4dac2434c694b3b61da7a53d8a0c583a6beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c62c9ba7404f5f26cfb5a4a8dd64baf6cdd7584226ef1fc86f9375c52b25124",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant26a3abb0346d3e6c8f40800ede3d4dac2434c694b3b61da7a53d8a0c583a6beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc1150ee22da3959a001691ea42cff34b77fe2d2d6b8183ab857a14b4a28ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThreeTypicalDeltaOperation (A : Type*) [CommRing A] where
  delta : A → A
  phi : A →+* A
  phi_apply : ∀ a, phi a = a ^ 3 + (3 : A) * delta a

/-- The explicit `p = 3` p-derivation laws associated to an operation-level
Frobenius lift.

The additive correction is
`-a²b - ab²`, and the multiplicative correction is
`a³δ(b) + b³δ(a) + 3δ(a)δ(b)`.  Keeping this as a separate proof
bundle lets a consumer distinguish a bare displayed Frobenius formula from a
fully certified three-typical delta operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant26a3abb0346d3e6c8f40800ede3d4dac2434c694b3b61da7a53d8a0c583a6beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant26a3abb0346d3e6c8f40800ede3d4dac2434c694b3b61da7a53d8a0c583a6beb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd913c572bfc9e159bf1c868b98c567e0c22f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

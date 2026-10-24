# includeLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb80c1f260fa1d5310734b8f743b1435261360a6ff3acb005cde06f7881e783",
  "kind": "def",
  "lexical_name": "includeLeft",
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
  "slug": "includeleft--fe7d859b399dbd4d560b2ca1",
  "source": {
    "blob": "03f640e82c1320e0e994e21efb704bc0571f1d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 270,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7d859b399dbd4d560b2ca1b34c5791d179918acaaaac05517f29a719518245",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb80c1f260fa1d5310734b8f743b1435261360a6ff3acb005cde06f7881e783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def includeLeft : A →ₐ[R] 𝒜 ᵍ⊗[R] ℬ where
  toRingHom := includeLeftRingHom 𝒜 ℬ
  commutes' _ := rfl

/-- The algebra morphism `B →ₐ[R] A ⊗[R] B` sending `b` to `1 ⊗ₜ b`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f640e82c1320e0e994e21efb704bc0571f1d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

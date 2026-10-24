# tensorH1CotangentOfFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a5aa881df3729ba4ce2522ba09c0d10ca4383c24f0b33250e9eabe3a2e77e3a",
  "kind": "def",
  "lexical_name": "tensorH1CotangentOfFlat",
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
  "slug": "tensorh1cotangentofflat--2343d6ee2d2cfb477e12d865",
  "source": {
    "blob": "ef7141cca8ab670c9236c404eb305c090ac478a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 194,
    "path": "GRWTSK/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2343d6ee2d2cfb477e12d865928a6d6195104e55cbc4c133bdb97b53dc21d04f",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a5aa881df3729ba4ce2522ba09c0d10ca4383c24f0b33250e9eabe3a2e77e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorH1CotangentOfFlat [Module.Flat R T] :
    T ⊗[R] P.H1Cotangent ≃ₗ[T] (P.baseChange (T := T)).H1Cotangent :=
  LinearEquiv.ofBijective (P.tensorToH1Cotangent T)
    (P.tensorToH1Cotangent_bijective_of_flat T)

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef7141cca8ab670c9236c404eb305c090ac478a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# asPowersEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09207135a1af774a16e260045d4cf9a2fe287627ed7c128c75bbed31164784c7",
  "kind": "def",
  "lexical_name": "asPowersEquiv",
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
  "slug": "aspowersequiv--92e37003528e5e13dd3f2341",
  "source": {
    "blob": "da04b4098844c4ad93dd1a829c7bcb7e11fad924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92e37003528e5e13dd3f2341c0308af73c22d091e17acb5e0f4258b848c53424",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09207135a1af774a16e260045d4cf9a2fe287627ed7c128c75bbed31164784c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def asPowersEquiv : asPowers R A ≃ₐ[R] FreeProduct R A :=
  RingQuot.algEquivQuotAlgEquiv
    (powerAlgebraEquivFreeTensorAlgebra R A |>.symm) (FreeProduct.rel R A)
  |>.symm

@[deprecated (since := "2025-05-01")]
alias equivPowerAlgebra := asPowersEquiv

open RingQuot Function

local infixr:60 " ∘ₐ " => AlgHom.comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da04b4098844c4ad93dd1a829c7bcb7e11fad924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

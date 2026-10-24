# ThreeTypicalDeltaOperation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:555cf5c3f5f7a70afc53b9e9d0fa70428bfabfa713f81d6f0cc64a1bd98dd83d",
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
  "slug": "threetypicaldeltaoperation--12941c7a2e0c527cfb530022",
  "source": {
    "blob": "5021d5f8e5305fe7606c07a20b66b9c41d818570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12941c7a2e0c527cfb530022947bbf7c4fa30d4a32755a93b8a34a390aa1c725",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:555cf5c3f5f7a70afc53b9e9d0fa70428bfabfa713f81d6f0cc64a1bd98dd83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5021d5f8e5305fe7606c07a20b66b9c41d818570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a2ea77694f9d942003913264f615ec4eeced9dc36f4dce56ac8fffbc23c7dbc",
  "kind": "instance",
  "lexical_name": "instModule",
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
  "slug": "instmodule--4e5bf245da73cd74714502d7",
  "source": {
    "blob": "7aa2a5e2eac071ca595089040bc651c6333c7c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 282,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e5bf245da73cd74714502d7ae9081501a2949899c4da0ccfd61983d7a1e6210",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a2ea77694f9d942003913264f615ec4eeced9dc36f4dce56ac8fffbc23c7dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule {S : Type*} [Semiring S] [Module S M] [SMulCommClass R S M]
    [SMulCommClass S A M] : Module S (Derivation R A M) :=
  Function.Injective.module S coeFnAddMonoidHom coe_injective coe_smul

section PushForward

variable {N : Type*} [AddCommMonoid N] [Module A N] [Module R N] [IsScalarTower R A M]
  [IsScalarTower R A N]

variable (f : M →ₗ[A] N) (e : M ≃ₗ[A] N)

/-- We can push forward derivations using linear maps, i.e., the composition of a derivation with a
linear map is a derivation. Furthermore, this operation is linear on the spaces of derivations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aa2a5e2eac071ca595089040bc651c6333c7c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

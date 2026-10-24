# localizedQuotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4188bbaffaf59425aad0e58062583793b0c3efe8f6d339742c7eadb5db6cbf11",
  "kind": "def",
  "lexical_name": "localizedQuotientEquiv",
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
  "slug": "localizedquotientequiv--731e6711fca69d373b16a2c7",
  "source": {
    "blob": "cc06937d994efab6beec8afc09e8ec2ea7d0fe7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:731e6711fca69d373b16a2c7dadddae6f9df50f55f5bd47e046be2304468113b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4188bbaffaf59425aad0e58062583793b0c3efe8f6d339742c7eadb5db6cbf11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def localizedQuotientEquiv :
    (LocalizedModule p M ⧸ M'.localized p) ≃ₗ[Localization p] LocalizedModule p (M ⧸ M') :=
  have := IsLocalization.linearMap_compatibleSMul p
  IsLocalizedModule.linearEquiv p (M'.toLocalizedQuotient p) (LocalizedModule.mkLinearMap _ _)
    |>.restrictScalars _

end Quotient

namespace LinearMap

variable {P : Type*} [AddCommMonoid P] [Module R P]
variable {Q : Type*} [AddCommMonoid Q] [Module R Q] [Module S Q] [IsScalarTower R S Q]
variable (f' : P →ₗ[R] Q) [IsLocalizedModule p f']

open Submodule IsLocalizedModule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6cf82c9b08559ccaecf12802e99457e2a24c5334d84ef7923b9125403ebb6b96.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc06937d994efab6beec8afc09e8ec2ea7d0fe7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

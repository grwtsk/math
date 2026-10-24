# HomogeneousSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b91512146345024655bace65d401a0dae8d22ceb12e488b931830c0fe931007d",
  "kind": "structure",
  "lexical_name": "HomogeneousSubmodule",
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
  "slug": "homogeneoussubmodule--2e02d218b42ed044da91600a",
  "source": {
    "blob": "37be5d4c9aae66bff018125ba51d070f776c17ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e02d218b42ed044da91600adf4f7385e300d719fabefcf0a591c36c0b993547",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b91512146345024655bace65d401a0dae8d22ceb12e488b931830c0fe931007d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HomogeneousSubmodule (𝒜 : ιA → σA) (ℳ : ιM → σM)
    [DecidableEq ιA] [AddMonoid ιA] [SetLike σA A] [AddSubmonoidClass σA A] [GradedRing 𝒜]
    [DecidableEq ιM] [SetLike σM M] [AddSubmonoidClass σM M] [Decomposition ℳ]
    [VAdd ιA ιM] [GradedSMul 𝒜 ℳ]
    extends Submodule A M where
  is_homogeneous' : toSubmodule.IsHomogeneous ℳ

variable (𝒜 : ιA → σA) (ℳ : ιM → σM)
variable [DecidableEq ιA] [AddMonoid ιA] [SetLike σA A] [AddSubmonoidClass σA A] [GradedRing 𝒜]
variable [DecidableEq ιM] [SetLike σM M] [AddSubmonoidClass σM M] [Decomposition ℳ]
variable [VAdd ιA ιM] [GradedSMul 𝒜 ℳ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37be5d4c9aae66bff018125ba51d070f776c17ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

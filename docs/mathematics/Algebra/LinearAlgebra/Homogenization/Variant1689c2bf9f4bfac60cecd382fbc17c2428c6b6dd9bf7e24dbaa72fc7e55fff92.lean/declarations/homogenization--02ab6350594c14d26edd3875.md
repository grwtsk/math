# Homogenization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0907b345f4b69d09307491c5c6cf54b9e409d4e1b80d2c8f73343d5b80354e22",
  "kind": "def",
  "lexical_name": "Homogenization",
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
  "slug": "homogenization--02ab6350594c14d26edd3875",
  "source": {
    "blob": "3042118c5b3242ed79b7ac712559c7ace17902cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02ab6350594c14d26edd38754e6431a4837f13186012575e279dfe14647390e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0907b345f4b69d09307491c5c6cf54b9e409d4e1b80d2c8f73343d5b80354e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homogenization
    (R : Type*) {V : Type*} (P : Type*) [Ring R] [AddCommGroup V] [Module R V] [AddTorsor V P] :=
  V × R

variable
  {R : Type*} [Ring R]
  {V P : Type*} [AddCommGroup V] [Module R V] [AddTorsor V P]
  {V₁ P₁ : Type*} [AddCommGroup V₁] [Module R V₁] [AddTorsor V₁ P₁]
  {V₂ P₂ : Type*} [AddCommGroup V₂] [Module R V₂] [AddTorsor V₂ P₂]
  {V₃ P₃ : Type*} [AddCommGroup V₃] [Module R V₃] [AddTorsor V₃ P₃]
  {W : Type*} [AddCommGroup W] [Module R W]

namespace Homogenization

/- TODO: define the `AddCommGroup` and `Module` instances using `inferInstanceAs` once
https://github.com/leanprover/lean4/issues/14470 is fixed -/

/-- Auxiliary definition used for defining the module structure on `Homogenization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3042118c5b3242ed79b7ac712559c7ace17902cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

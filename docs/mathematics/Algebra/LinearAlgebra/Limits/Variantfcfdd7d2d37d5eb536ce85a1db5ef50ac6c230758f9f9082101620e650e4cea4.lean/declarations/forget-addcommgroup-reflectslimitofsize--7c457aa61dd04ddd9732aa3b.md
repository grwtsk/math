# forget₂AddCommGroup_reflectsLimitOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7e0d3275ad87f954994dd83aaa87eb62ba1d5a8bacc36609d558d43c9edc784",
  "kind": "instance",
  "lexical_name": "forget₂AddCommGroup_reflectsLimitOfSize",
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
  "slug": "forget-addcommgroup-reflectslimitofsize--7c457aa61dd04ddd9732aa3b",
  "source": {
    "blob": "578cb9de3bbf8af05056639a3f6edc7a6713b1fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c457aa61dd04ddd9732aa3bbadf740899a379af7f678d73ef3e89e178a2a890",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7e0d3275ad87f954994dd83aaa87eb62ba1d5a8bacc36609d558d43c9edc784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget₂AddCommGroup_reflectsLimitOfSize :
    ReflectsLimitsOfSize.{t, v} (forget₂ (ModuleCat.{w} R) AddCommGrp) where

section DirectLimit

open Module

variable {ι : Type v}
variable [DecidableEq ι] [Preorder ι]
variable (G : ι → Type v)
variable [∀ i, AddCommGroup (G i)] [∀ i, Module R (G i)]
variable (f : ∀ i j, i ≤ j → G i →ₗ[R] G j) [DirectedSystem G fun i j h ↦ f i j h]

/-- The diagram (in the sense of `CategoryTheory`) of an unbundled `directLimit` of modules. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578cb9de3bbf8af05056639a3f6edc7a6713b1fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

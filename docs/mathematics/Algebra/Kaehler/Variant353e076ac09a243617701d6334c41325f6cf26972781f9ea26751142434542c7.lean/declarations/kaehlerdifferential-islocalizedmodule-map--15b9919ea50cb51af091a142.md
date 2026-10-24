# KaehlerDifferential.isLocalizedModule_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b978bdc77fe0adb6c8e17c794ea5db91e4da26bce1fb8ec6b57128c402e6c0b9",
  "kind": "instance",
  "lexical_name": "KaehlerDifferential.isLocalizedModule_map",
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
  "slug": "kaehlerdifferential-islocalizedmodule-map--15b9919ea50cb51af091a142",
  "source": {
    "blob": "bb141bf6b2643c2566500a9f40bf20f129ff5367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15b9919ea50cb51af091a14266ab10d23192917eacc1b8ab1550f1443c0c825a",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b978bdc77fe0adb6c8e17c794ea5db91e4da26bce1fb8ec6b57128c402e6c0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance KaehlerDifferential.isLocalizedModule_map (M : Submonoid S) [IsLocalization M T] :
    IsLocalizedModule M (map R R S T) :=
  have := Algebra.FormallyEtale.of_isLocalization (Rₘ := T) M
  (isLocalizedModule_iff_isBaseChange M T _).mpr (isBaseChange_of_formallyEtale R S T)

namespace Algebra.Extension

open KaehlerDifferential

attribute [local instance] SMulCommClass.of_commMonoid

variable {R S T}

/-!
Suppose we have a morphism of extensions of `R`-algebras
```
0 → J → Q → T → 0
    ↑   ↑   ↑
0 → I → P → S → 0
```
-/
variable {P : Extension.{u} R S} {Q : Extension.{u} R T} (f : P.Hom Q)

/-- If `P → Q` is formally etale, then `T ⊗ₛ (S ⊗ₚ Ω[P/R]) ≃ T ⊗_Q Ω[Q/R]`. -/
noncomputable
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb141bf6b2643c2566500a9f40bf20f129ff5367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# galLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5a02003cfc09c4f912af0c9975cfe51ab854758adf0c14805658eb4d71a1590",
  "kind": "def",
  "lexical_name": "galLift",
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
  "slug": "gallift--e45ae0e730ab11c1b37eb60f",
  "source": {
    "blob": "63f417f2adbe591569d04513fa4ac43825643dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 40,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45ae0e730ab11c1b37eb60fa8e7c3ff66537d5ac8e09e08669ccb6c226af0f7",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5a02003cfc09c4f912af0c9975cfe51ab854758adf0c14805658eb4d71a1590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def galLift (σ : B →ₐ[A] B) : L →ₐ[K] L :=
  haveI := (IsFractionRing.injective A K).isDomain
  haveI := NoZeroSMulDivisors.trans_faithfulSMul A K L
  haveI := IsIntegralClosure.isLocalization A K L B
  haveI H : ∀ (y :  Algebra.algebraMapSubmonoid B A⁰),
      IsUnit (((algebraMap B L).comp σ) (y : B)) := by
    rintro ⟨_, x, hx, rfl⟩
    simpa only [RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, AlgHom.commutes,
      isUnit_iff_ne_zero, ne_eq, map_eq_zero_iff _ (FaithfulSMul.algebraMap_injective _ _),
      ← IsScalarTower.algebraMap_apply] using nonZeroDivisors.ne_zero hx
  haveI H_eq : (IsLocalization.lift (S := L) H).comp (algebraMap K L) = (algebraMap K L) := by
    apply IsLocalization.ringHom_ext A⁰
    ext
    simp only [RingHom.coe_comp, Function.comp_apply, ← IsScalarTower.algebraMap_apply A K L,
      IsScalarTower.algebraMap_apply A B L, IsLocalization.lift_eq,
      RingHom.coe_coe, AlgHom.commutes]
  { IsLocalization.lift (S := L) H with commutes' := DFunLike.congr_fun H_eq }

/-- The restriction `End(L/K) → End(B/A)` in an AKLB setup.
Also see `galRestrict` for the `AlgEquiv` version. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f417f2adbe591569d04513fa4ac43825643dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

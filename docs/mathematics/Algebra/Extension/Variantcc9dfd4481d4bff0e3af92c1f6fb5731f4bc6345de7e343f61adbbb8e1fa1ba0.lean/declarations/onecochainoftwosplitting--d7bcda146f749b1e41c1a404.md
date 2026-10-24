# oneCochainOfTwoSplitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e01264a5b94d33db1c23c7a787ce3114de96eb2cea9b429f1f134615ec03228",
  "kind": "def",
  "lexical_name": "oneCochainOfTwoSplitting",
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
  "slug": "onecochainoftwosplitting--d7bcda146f749b1e41c1a404",
  "source": {
    "blob": "ab9ba471259a2b2625021c90af021e73648d061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 436,
    "path": "GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7bcda146f749b1e41c1a4049d053bd643d7acaf21463d016e11ba77c0dc14a3",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e01264a5b94d33db1c23c7a787ce3114de96eb2cea9b429f1f134615ec03228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def oneCochainOfTwoSplitting (E : Extension R M L) {s₁ s₂ : L →ₗ[R] E.L}
    (hs₁ : LeftInverse E.proj s₁) (hs₂ : LeftInverse E.proj s₂) :
    oneCochain R L M where
  toFun x :=
    E.toKer.symm ⟨(s₁ x) - (s₂ x), LieHom.mem_ker.mpr (by rw [map_sub, sub_eq_zero, hs₁, hs₂])⟩
  map_add' _ _ := by
    rw [← map_add, AddMemClass.mk_add_mk, EquivLike.apply_eq_iff_eq, Subtype.mk_eq_mk, map_add,
      map_add, add_sub_add_comm]
  map_smul' _ _ := by
    rw [RingHom.id_apply, ← map_smul, EquivLike.apply_eq_iff_eq, SetLike.mk_smul_of_tower_mk,
      Subtype.mk_eq_mk, LinearMap.map_smul_of_tower, smul_sub, LinearMap.map_smul_of_tower]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ba471259a2b2625021c90af021e73648d061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

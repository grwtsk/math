# _root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsInternalPrimePowerTorsionOfPid.Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.Ideal.torsionOf_eq_span_pow_pOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf646db-ff97-9033-3602-93a33e89f199",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsInternalPrimePowerTorsionOfPid.Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.Ideal.torsionOf_eq_span_pow_pOrder",
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
  "slug": "root-grwtsk-algebra-linearalgebra-submoduleisinternalprimepowertorsionof--88e43cc91a06aaa106b68d9e",
  "source": {
    "blob": "3d9b27d465dc7b95347a613a6569128035cb87d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e43cc91a06aaa106b68d9e1dc3c9fbc8139fe12532e9b35efb6d5505f79170",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf646db-ff97-9033-3602-93a33e89f199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsInternalPrimePowerTorsionOfPid.Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.Ideal.torsionOf_eq_span_pow_pOrder (x : M) :
    torsionOf R M x = span {p ^ pOrder hM x} := by
  dsimp only [pOrder]
  rw [← (torsionOf R M x).span_singleton_generator, Ideal.span_singleton_eq_span_singleton, ←
    Associates.mk_eq_mk_iff_associated, Associates.mk_pow]
  have prop :
    (fun n : ℕ => p ^ n • x = 0) = fun n : ℕ =>
      (Associates.mk <| generator <| torsionOf R M x) ∣ Associates.mk p ^ n :=
    by ext n; rw [← Associates.mk_pow, Associates.mk_dvd_mk, ← mem_iff_generator_dvd]; rfl
  have := (isTorsion'_powers_iff p).mp hM x; rw [prop] at this
  classical
  convert
    Associates.eq_pow_find_of_dvd_irreducible_pow ((Associates.irreducible_mk p).mpr hp)
      this.choose_spec
#align ideal.torsion_of_eq_span_pow_p_order Ideal.torsionOf_eq_span_pow_pOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9b27d465dc7b95347a613a6569128035cb87d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

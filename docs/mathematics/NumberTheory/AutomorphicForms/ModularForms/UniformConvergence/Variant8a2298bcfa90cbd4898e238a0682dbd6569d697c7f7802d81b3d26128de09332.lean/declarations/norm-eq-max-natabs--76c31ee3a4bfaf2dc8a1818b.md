# norm_eq_max_natAbs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c22f9afb-4394-182f-7072-247016b4620d",
  "kind": "lemma",
  "lexical_name": "norm_eq_max_natAbs",
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
  "slug": "norm-eq-max-natabs--76c31ee3a4bfaf2dc8a1818b",
  "source": {
    "blob": "f8f2c11e167477ed5a48678c5acf6e98eac293db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c31ee3a4bfaf2dc8a1818b8681e6b8ea34ac0d66f0095b275647e4c7db95d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c22f9afb-4394-182f-7072-247016b4620d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_eq_max_natAbs (x : Fin 2 → ℤ) : ‖x‖ = max (x 0).natAbs (x 1).natAbs := by
  rw [← coe_nnnorm, ← NNReal.coe_natCast, NNReal.coe_inj, Nat.cast_max]
  refine eq_of_forall_ge_iff fun c ↦ ?_
  simp only [pi_nnnorm_le_iff, Fin.forall_fin_two, max_le_iff, NNReal.natCast_natAbs]

section bounding_functions

/-- Auxiliary function used for bounding Eisenstein series, defined as
  `z.im ^ 2 / (z.re ^ 2 + z.im ^ 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f2c11e167477ed5a48678c5acf6e98eac293db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# moduleBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:100c71c12bca83b9cdd76d1436838d55dec571b7f59cac07049beeef4fd72462",
  "kind": "abbrev",
  "lexical_name": "moduleBaseChange",
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
  "slug": "modulebasechange--147095e67fc522a410ad7738",
  "source": {
    "blob": "292ab105b8803ca1f1fb5668f2d0f3f2ada51e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147095e67fc522a410ad77386752d606e08dd5957e64ce885e700f391d50b2c3",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:100c71c12bca83b9cdd76d1436838d55dec571b7f59cac07049beeef4fd72462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev moduleBaseChange :
    Module A (S ⊗[R] Ω[A⁄R]) where
  __ := (TensorProduct.comm R S (Ω[A⁄R])).toEquiv.mulAction A
  add_smul r s x := by induction x <;> simp [add_smul, tmul_add, *, add_add_add_comm]
  zero_smul x := by induction x <;> simp [*]
  smul_zero := by simp
  smul_add := by simp

attribute [local instance] moduleBaseChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292ab105b8803ca1f1fb5668f2d0f3f2ada51e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

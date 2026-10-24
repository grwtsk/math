# two_nsmul_reflection_eq_of_perm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeead757-fb9b-18d5-6275-f88e07a8704e",
  "kind": "lemma",
  "lexical_name": "two_nsmul_reflection_eq_of_perm_eq",
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
  "slug": "two-nsmul-reflection-eq-of-perm-eq--605ba4564df394dee20656fc",
  "source": {
    "blob": "a5478ae62af8e8ed266c7c2b864c5cd25ca47246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 516,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605ba4564df394dee20656fcbc76f908923e1dec340379901eb44ef48ec08851",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeead757-fb9b-18d5-6275-f88e07a8704e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_nsmul_reflection_eq_of_perm_eq (hij : P.reflectionPerm i = P.reflectionPerm j) :
    2 • ⇑(P.reflection i) = 2 • P.reflection j := by
  ext x
  suffices
      2 • P.toLinearMap x (P.coroot i) • P.root i = 2 • P.toLinearMap x (P.coroot j) • P.root j by
    simpa [reflection_apply, smul_sub]
  calc 2 • P.toLinearMap x (P.coroot i) • P.root i
      = P.toLinearMap x (P.coroot i) • ((2 : R) • P.root i) := ?_
    _ = P.toLinearMap x (P.coroot i) • (P.pairing i j • P.root j) := ?_
    _ = P.toLinearMap x (P.pairing i j • P.coroot i) • (P.root j) := ?_
    _ = P.toLinearMap x ((2 : R) • P.coroot j) • (P.root j) := ?_
    _ = 2 • P.toLinearMap x (P.coroot j) • P.root j := ?_
  · rw [smul_comm, ← Nat.cast_smul_eq_nsmul R, Nat.cast_ofNat]
  · rw [P.pairing_smul_root_eq j i i hij.symm, pairing_same]
  · rw [← smul_comm, ← smul_assoc, map_smul]
  · rw [← P.pairing_smul_coroot_eq j i j hij.symm, pairing_same]
  · rw [map_smul, smul_assoc, ← Nat.cast_smul_eq_nsmul R, Nat.cast_ofNat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5478ae62af8e8ed266c7c2b864c5cd25ca47246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

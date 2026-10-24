# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536577560696cf8f511376d3ba78f1b3078e25b504a4774076484fc53bc842b5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--902f4218a41bbfa4d4169b2c",
  "source": {
    "blob": "899ecacbd470c8fe8663b8467d35764290e74d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:902f4218a41bbfa4d4169b2cf02c62ceb48fc44d34e56826a823cb6ba6b943f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536577560696cf8f511376d3ba78f1b3078e25b504a4774076484fc53bc842b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Finite σ] (N : ℕ) : Module.Finite R (restrictTotalDegree σ R N) :=
  have := finite_setOf_bounded σ N
  have : Finite {s : σ →₀ ℕ | s.sum (fun _ e ↦ e) ≤ N} := by
    rw [Set.finite_coe_iff] at this ⊢
    exact this.subset fun n hn i ↦ (eq_or_ne (n i) 0).elim
      (fun h ↦ h.trans_le N.zero_le) fun h ↦
        (Finset.single_le_sum (fun _ _ ↦ Nat.zero_le _) <| Finsupp.mem_support_iff.mpr h).trans hn
  Module.Finite.of_basis (basisRestrictSupport R _)

end Degree

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `899ecacbd470c8fe8663b8467d35764290e74d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

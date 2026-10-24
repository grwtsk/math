# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5f4aa932de6af6eb0ac5d50c5844ebcf8eac6e60af24a0649c99ca68790001f",
  "kind": "example",
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
  "slug": "example--dfc346d9968549c2bed3d2d9",
  "source": {
    "blob": "bd08cfeb2eb1b43d51569f7b92ad581c62838e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc346d9968549c2bed3d2d94573cab482a7162b92ac52209d052f2a36cecb43",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5f4aa932de6af6eb0ac5d50c5844ebcf8eac6e60af24a0649c99ca68790001f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {k : Type _} [Semiring k] [Nontrivial k] :
    (Finsupp.comapSMul : SMul k (k →₀ k)) ≠ Finsupp.smulZeroClass.toSMul := by
  obtain ⟨u : k, hu⟩ := exists_ne (1 : k)
  intro h
  simp only [SMul.ext_iff, @SMul.smul_eq_hSMul _ _ (_), funext_iff, DFunLike.ext_iff] at h
  replace h := h u (Finsupp.single 1 1) u
  classical
  rw [comapSMul_single, smul_apply, smul_eq_mul, mul_one, single_eq_same, smul_eq_mul,
    single_eq_of_ne hu, MulZeroClass.mul_zero] at h
  exact one_ne_zero h

/-- `Finsupp.comapSMul` can form a non-equal diamond with `Finsupp.smulZeroClass` even when
the domain is a group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd08cfeb2eb1b43d51569f7b92ad581c62838e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

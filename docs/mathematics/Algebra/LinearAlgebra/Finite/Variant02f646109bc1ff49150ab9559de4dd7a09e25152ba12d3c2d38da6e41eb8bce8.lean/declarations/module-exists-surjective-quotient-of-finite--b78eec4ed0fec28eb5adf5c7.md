# Module.exists_surjective_quotient_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f861c3e1-6d4c-cd59-8760-baa67ba7cbc8",
  "kind": "lemma",
  "lexical_name": "Module.exists_surjective_quotient_of_finite",
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
  "slug": "module-exists-surjective-quotient-of-finite--b78eec4ed0fec28eb5adf5c7",
  "source": {
    "blob": "04dda867f0569495792fb522cb4abc24551cc3ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78eec4ed0fec28eb5adf5c78d0ef8efdf16adea0f2b894752cb0f187e32370a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f861c3e1-6d4c-cd59-8760-baa67ba7cbc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.exists_surjective_quotient_of_finite :
    ∃ (I : Ideal R) (f : M →ₗ[R] R ⧸ I), I ≠ ⊤ ∧ Function.Surjective f := by
  obtain ⟨N, hN, ⟨x, hx⟩⟩ := Module.exists_isPrincipal_quotient_of_finite R M
  let f := (LinearMap.toSpanSingleton R _ x).quotKerEquivOfSurjective
    (by rw [← LinearMap.range_eq_top, ← LinearMap.span_singleton_eq_range, hx])
  refine ⟨_, f.symm.toLinearMap.comp N.mkQ, fun e ↦ ?_, f.symm.surjective.comp N.mkQ_surjective⟩
  obtain rfl : x = 0 := by simpa using LinearMap.congr_fun (LinearMap.ker_eq_top.mp e) 1
  rw [ne_eq, ← Submodule.subsingleton_quotient_iff_eq_top, ← not_nontrivial_iff_subsingleton,
    not_not] at hN
  simp at hx

open TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dda867f0569495792fb522cb4abc24551cc3ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

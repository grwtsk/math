# finite_test_tail_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f84f8b16-2e9a-20d5-48e2-917233fa434e",
  "kind": "theorem",
  "lexical_name": "finite_test_tail_uniform",
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
  "slug": "finite-test-tail-uniform--7f95548de5a65e81a9630dbe",
  "source": {
    "blob": "05baed43db04e28bc3e1a142a8b5097b0d071bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f95548de5a65e81a9630dbe58cd042bfd442b59cc3d48a2fc86898ca3af609b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f84f8b16-2e9a-20d5-48e2-917233fa434e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_test_tail_uniform
    (F : Finset CanonicalSquareTentTest)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
      ∀ f : CanonicalSquareTentTest, f ∈ F → lowerDefect n f ≤ ε := by
  classical
  induction F using Finset.induction_on with
  | empty =>
      refine ⟨0, ?_⟩
      intro n hn f hf
      simp at hf
  | @insert a s ha ih =>
      obtain ⟨N, hN⟩ := ih
      obtain ⟨M, hM⟩ := lowerDefect_vanishes a ε hε
      refine ⟨max N M, ?_⟩
      intro n hn f hf
      rcases Finset.mem_insert.mp hf with hfa | hfs
      · subst f
        have hnonneg : 0 ≤ lowerDefect n a := lowerDefect_nonnegative n a
        have hbound := hM n (le_trans (le_max_right N M) hn)
        simpa only [abs_of_nonneg hnonneg] using hbound
      · exact hN n (le_trans (le_max_left N M) hn) f hfs

/-- A single certified finite-zero-head cutoff simultaneously bounds the
complete signed complex residual, the real diagonal comparison error,
and the negative part of the finite-stage approximant, at all tests
in the same finite family.  Its positivity content is only
approximately nonnegative real diagonals; the target's exact
nonnegative arithmetic Gram is proved in the imported source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05baed43db04e28bc3e1a142a8b5097b0d071bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

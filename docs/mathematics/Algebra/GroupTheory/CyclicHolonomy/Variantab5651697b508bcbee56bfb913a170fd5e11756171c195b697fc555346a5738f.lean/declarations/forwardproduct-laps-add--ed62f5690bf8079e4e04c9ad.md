# forwardProduct_laps_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:724a3f4f-6806-5214-45d9-9ca2f235216f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55cd00ac-1203-4e5c-0634-7af1f453f708",
  "kind": "theorem",
  "lexical_name": "forwardProduct_laps_add",
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
  "slug": "forwardproduct-laps-add--ed62f5690bf8079e4e04c9ad",
  "source": {
    "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 415,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed62f5690bf8079e4e04c9ad42e1b354d39906a02210e00c7121ae46109c5c25",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55cd00ac-1203-4e5c-0634-7af1f453f708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardProduct_laps_add (system : StepSystem h)
    (p : CoverPhase h) (q n : ℕ) :
    system.forwardProduct p (q * cycleLength h + n) =
      (monodromy system p ^ q).trans (system.forwardProduct p n) := by
  induction q with
  | zero =>
      simp only [zero_mul, zero_add, pow_zero]
      change system.forwardProduct p n =
        (LinearEquiv.refl ℝ Fiber3).trans (system.forwardProduct p n)
      exact (LinearEquiv.refl_trans _).symm
  | succ q ih =>
      have hcount :
          (q + 1) * cycleLength h + n =
            cycleLength h + (q * cycleLength h + n) := by
        rw [Nat.add_mul, one_mul]
        omega
      rw [hcount, forwardProduct_cycle_add, ih, pow_succ,
        LinearEquiv.mul_eq_trans]
      exact LinearEquiv.trans_assoc _ _ _ |>.symm

/--
Every unbounded natural-step transport is exactly a power of one-lap
monodromy followed by a uniquely bounded residual transport.  Thus reducing
the phase modulo the circuit length loses no information once the lap count
is retained in the monodromy exponent.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# meromorphicOrderAt_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:916dfb45-c17d-3164-4005-8b504eb51f07",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_inv",
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
  "slug": "meromorphicorderat-inv--9171a65d657f37aa74cfe6de",
  "source": {
    "blob": "66318e292faf329e4d3d60546920c8de585ae8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 566,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9171a65d657f37aa74cfe6de743d6f559e744799bf7dc33ab18d724ccd6d6efe",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:916dfb45-c17d-3164-4005-8b504eb51f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_fun] theorem meromorphicOrderAt_inv {f : 𝕜 → 𝕜'} :
    meromorphicOrderAt (f⁻¹) x = -meromorphicOrderAt f x := by
  by_cases hf : MeromorphicAt f x; swap
  · have : ¬ MeromorphicAt (f⁻¹) x := by
      contrapose hf
      simpa using hf.inv
    simp [hf, this]
  by_cases h₂f : meromorphicOrderAt f x = ⊤
  · rw [h₂f, ← LinearOrderedAddCommGroupWithTop.neg_top, neg_neg]
    rw [meromorphicOrderAt_eq_top_iff] at *
    filter_upwards [h₂f]
    simp
  lift meromorphicOrderAt f x to ℤ using h₂f with a ha
  apply (meromorphicOrderAt_eq_int_iff hf.inv).2
  obtain ⟨g, h₁g, h₂g, h₃g⟩ := (meromorphicOrderAt_eq_int_iff hf).1 ha.symm
  use g⁻¹, h₁g.inv h₂g, inv_eq_zero.not.2 h₂g
  rw [eventually_nhdsWithin_iff] at *
  filter_upwards [h₃g]
  intro _ h₁a h₂a
  simp [h₁a h₂a, Algebra.smul_def, mul_comm]

/--
The order of a quotient is the difference of the orders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66318e292faf329e4d3d60546920c8de585ae8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

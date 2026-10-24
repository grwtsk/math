# mem_foldl_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4bbf651-9292-f0ec-e3e3-f37684e1dfe3",
  "kind": "theorem",
  "lexical_name": "mem_foldl_add",
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
  "slug": "mem-foldl-add--7889dd9f3cf258fd4db0f67a",
  "source": {
    "blob": "54dccc291f0be57076562be279f113b8e1fa7e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7889dd9f3cf258fd4db0f67ae7040c7e5a2ed10e0bbd80bcc07f59750a89d8e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4bbf651-9292-f0ec-e3e3-f37684e1dfe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_foldl_add {xs_real : List ℝ} {xs_interval : List IntervalDyadic}
    {acc_real : ℝ} {acc_interval : IntervalDyadic}
    (_hlen : xs_real.length = xs_interval.length)
    (hacc : acc_real ∈ acc_interval)
    (_hmem : ∀ i (hi : i < xs_real.length),
      xs_real[i] ∈ xs_interval[i]'(_hlen ▸ hi)) :
    xs_real.foldl (· + ·) acc_real ∈
    xs_interval.foldl IntervalDyadic.add acc_interval := by
  -- Induction proof: at each step we add a real to the accumulator
  -- and an interval to the interval accumulator, using mem_add.
  induction xs_real generalizing xs_interval acc_real acc_interval with
  | nil =>
    cases xs_interval with
    | nil => simp only [List.foldl_nil]; exact hacc
    | cons _ _ => simp at _hlen
  | cons x xs ih =>
    cases xs_interval with
    | nil => simp at _hlen
    | cons I Is =>
      simp only [List.foldl_cons]
      simp only [List.length_cons, Nat.add_right_cancel_iff] at _hlen
      -- The new accumulator: acc + x ∈ acc_interval.add I
      have hacc' : acc_real + x ∈ IntervalDyadic.add acc_interval I :=
        IntervalDyadic.mem_add hacc (_hmem 0 (by simp))
      -- Membership for the tail
      have hmem' : ∀ i (hi : i < xs.length), xs[i] ∈ Is[i]'(_hlen ▸ hi) := fun i hi =>
        _hmem (i + 1) (by simp; omega)
      exact ih _hlen hacc' hmem'

/-- Real Softmax function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54dccc291f0be57076562be279f113b8e1fa7e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# closed_prefix_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b68c9c-8961-e8a2-1ff5-013c718f2a7d",
  "kind": "theorem",
  "lexical_name": "closed_prefix_split",
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
  "slug": "closed-prefix-split--ca9de8ccc7048684ea32ed66",
  "source": {
    "blob": "ca7fa70f797788aa2f0162c3c26e24f5f65b3906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca9de8ccc7048684ea32ed6604bcd0e117c65471f44f6dfd226a00b0bd7e5fb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b68c9c-8961-e8a2-1ff5-013c718f2a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_prefix_split (f : ℕ → ℝ) {lower upper : ℝ}
    (hlower : 1 ≤ lower) (horder : lower ≤ upper) :
    (∑ n ∈ Finset.Icc 1 ⌊upper⌋₊, f n) =
      (∑ n ∈ Finset.Icc 1 ⌊lower⌋₊, f n) +
        ∑ n ∈ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊, f n := by
  have hfloorLower : 1 ≤ ⌊lower⌋₊ := by
    simpa using Nat.floor_mono hlower
  have hfloorOrder : ⌊lower⌋₊ ≤ ⌊upper⌋₊ := Nat.floor_mono horder
  have hpartition : Finset.Icc 1 ⌊lower⌋₊ ∪ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊ =
      Finset.Icc 1 ⌊upper⌋₊ := by
    ext n
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hdisjoint : Disjoint (Finset.Icc 1 ⌊lower⌋₊)
      (Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊) := by
    apply Finset.disjoint_left.mpr
    intro n hclosed hstrict
    exact (not_lt_of_ge (Finset.mem_Icc.mp hclosed).2) (Finset.mem_Ioc.mp hstrict).1
  rw [← hpartition, Finset.sum_union hdisjoint]

/-- Exact moving-reset algebra for the finite pickup. The lower touching atom
remains in `mertens lower`; the upper touching atom retains its zero weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fa70f797788aa2f0162c3c26e24f5f65b3906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

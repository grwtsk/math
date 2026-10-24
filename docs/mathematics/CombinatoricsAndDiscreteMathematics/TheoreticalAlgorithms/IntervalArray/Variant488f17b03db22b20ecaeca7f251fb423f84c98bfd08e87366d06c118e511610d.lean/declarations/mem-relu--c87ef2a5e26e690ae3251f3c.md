# mem_relu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdbfed62-7633-5a70-909d-be597b43d494",
  "kind": "theorem",
  "lexical_name": "mem_relu",
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
  "slug": "mem-relu--c87ef2a5e26e690ae3251f3c",
  "source": {
    "blob": "a7618749cc7ca2668bdf19cb05325d585c22835e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87ef2a5e26e690ae3251f3ce92475e2f0376dcbbbe170d3f8676cfe7005d94c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbfed62-7633-5a70-909d-be597b43d494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_relu {x : Fin n → ℝ} {a : IntervalArray n} (hx : x ∈ a) :
    (fun i => max 0 (x i)) ∈ relu a := by
  show IntervalArray.mem (relu a) (fun i => max 0 (x i))
  unfold mem
  intro i
  simp only [relu, getLo, getHi, Array.getElem_ofFn,
             Dyadic.max_toRat, Dyadic.toRat_ofInt, Int.cast_zero]
  have hx' : IntervalArray.mem a x := hx
  have ⟨hlo, hhi⟩ := hx' i
  simp only [getLo, getHi] at hlo hhi
  -- Use max_comm to align orders: max a b = max b a
  simp only [Rat.cast_max, Rat.cast_zero, max_comm (0 : ℝ) _]
  constructor
  · -- Lower bound: max(lo, 0) ≤ max(x, 0)
    apply max_le_max _ (le_refl 0)
    exact_mod_cast hlo
  · -- Upper bound: max(x, 0) ≤ max(hi, 0)
    apply max_le_max _ (le_refl 0)
    exact_mod_cast hhi

/-! ### Conversion -/

/-- Convert from list-based IntervalVector -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7618749cc7ca2668bdf19cb05325d585c22835e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

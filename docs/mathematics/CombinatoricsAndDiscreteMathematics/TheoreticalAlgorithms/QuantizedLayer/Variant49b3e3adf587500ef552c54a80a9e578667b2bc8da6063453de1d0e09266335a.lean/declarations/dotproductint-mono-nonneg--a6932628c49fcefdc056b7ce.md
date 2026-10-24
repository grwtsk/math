# dotProductInt_mono_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0a24a8b-ee40-e01d-32cc-7131ea331bb4",
  "kind": "theorem",
  "lexical_name": "dotProductInt_mono_nonneg",
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
  "slug": "dotproductint-mono-nonneg--a6932628c49fcefdc056b7ce",
  "source": {
    "blob": "32e26b477374ac1cecdd7a4f21f810042983d1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6932628c49fcefdc056b7cec17c225cf82acc2bec075f86687073fba3a4075e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a24a8b-ee40-e01d-32cc-7131ea331bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dotProductInt_mono_nonneg
    (w lo hi : Array Int)
    (h_w_nonneg : ∀ i, i < min w.size lo.size → i < min w.size hi.size → 0 ≤ w[i]!)
    (h_lo_le_hi : ∀ i, i < min w.size lo.size → i < min w.size hi.size → lo[i]! ≤ hi[i]!)
    (h_size_eq : min w.size lo.size = min w.size hi.size) :
    dotProductInt w lo ≤ dotProductInt w hi := by
  unfold dotProductInt
  rw [h_size_eq]
  -- Convert Array.foldl to List.foldl on List.range
  rw [← Array.foldl_toList, ← Array.foldl_toList, Array.toList_range]
  -- Apply our fold comparison lemma with the explicit list
  apply List.foldl_le_foldl (List.range (min w.size hi.size))
  · -- Pointwise inequality for i ∈ List.range (min w.size hi.size)
    intro acc i hi_mem

    have hi_bound : i < min w.size hi.size := List.mem_range.mp hi_mem
    have hi_lo : i < min w.size lo.size := by rw [h_size_eq]; exact hi_bound
    gcongr
    exact h_w_nonneg i hi_lo hi_bound
    exact h_lo_le_hi i hi_lo hi_bound
  · -- Monotonicity: (fun a => a + w[i]*lo[i]) is monotone in a
    intro i a b hab
    simp only [add_le_add_iff_right, hab]

/-- Integer matrix-vector multiplication -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e26b477374ac1cecdd7a4f21f810042983d1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

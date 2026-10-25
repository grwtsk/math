# lift_genericPolyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b05de9525a4de441c42f65422c1234b5874538eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6a63f31-b3ea-32ef-2992-08244d4f52c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16223997-adc2-b8be-693d-2199092b0f15",
  "kind": "theorem",
  "lexical_name": "lift_genericPolyMap",
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
  "slug": "lift-genericpolymap--62bd59b3c83c8bbdc4ba18ca",
  "source": {
    "blob": "b05de9525a4de441c42f65422c1234b5874538eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62bd59b3c83c8bbdc4ba18ca0c386942a8dc5f0cfda0eadb448fde1cc269f2fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16223997-adc2-b8be-693d-2199092b0f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_genericPolyMap [DecidableEq κ] [CommRing R]
    [DecidableEq R] (monoms : ι → Finset (κ →₀ ℕ))
    (f : (i : ι) × { x // x ∈ monoms i } ⊕ κ → R) (i : ι) :
    FreeCommRing.lift f (genericPolyMap monoms i) =
      MvPolynomial.eval (f ∘ Sum.inr)
        (((mvPolynomialSupportLEEquiv monoms).symm
          (f ∘ Sum.inl)).1 i) := by
  simp only [genericPolyMap, map_sum, map_mul, lift_of, support,
    mvPolynomialSupportLEEquiv, Finset.sum_filter, MvPolynomial.eval_eq,
    ne_eq, Function.comp, Equiv.coe_fn_symm_mk, Finsupp.coe_mk]
  conv_rhs => rw [← Finset.sum_attach]
  refine Finset.sum_congr rfl ?_
  intro m _
  simp only [Finsupp.prod, map_prod, map_pow, lift_of, Subtype.coe_eta, Finset.coe_mem,
    exists_prop, true_and, dite_eq_ite, ite_true, ite_not]
  split_ifs with h0 <;> simp_all

end Ring

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05de9525a4de441c42f65422c1234b5874538eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

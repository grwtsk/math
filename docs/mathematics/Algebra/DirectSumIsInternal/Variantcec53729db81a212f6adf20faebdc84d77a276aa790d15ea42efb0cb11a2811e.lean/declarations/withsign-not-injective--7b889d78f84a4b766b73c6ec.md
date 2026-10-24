# withSign.not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77546ffbf961512b767fb9b81e6806ccff232c2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99a65cd4-5e3c-b87d-b781-f249a21f7cf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a97d788c-9a68-49d7-946e-08d1d889f7d9",
  "kind": "theorem",
  "lexical_name": "withSign.not_injective",
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
  "slug": "withsign-not-injective--7b889d78f84a4b766b73c6ec",
  "source": {
    "blob": "77546ffbf961512b767fb9b81e6806ccff232c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b889d78f84a4b766b73c6ecbc92b7800cca39657bae4323361c8644f1855ca7",
  "verification": {
    "reference": "docs/verification/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a97d788c-9a68-49d7-946e-08d1d889f7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withSign.not_injective :
    ¬Function.Injective (DirectSum.toModule ℕ ℤˣ ℤ fun i => (withSign i).subtype) := by
  intro hinj
  let p1 : ℤ≥0 := ⟨1, mem_withSign_one.2 zero_le_one⟩
  let n1 : ℤ≤0 := ⟨-1, mem_withSign_neg_one.2 <| neg_nonpos.2 zero_le_one⟩
  let z :=
    DirectSum.lof ℕ _ (fun i => withSign i) 1 p1 + DirectSum.lof ℕ _ (fun i => withSign i) (-1) n1
  have : z ≠ 0 := by
    intro h
    -- porting note: `DFinsupp.singleAddHom_apply` doesn't work so we have to unfold
    dsimp [DirectSum.lof_eq_of, DirectSum.of, DFinsupp.singleAddHom] at h
    replace h := FunLike.congr_fun h 1
    rw [DFinsupp.zero_apply, DFinsupp.add_apply, DFinsupp.single_eq_same,
      DFinsupp.single_eq_of_ne UnitsInt.one_ne_neg_one.symm, add_zero, Subtype.ext_iff,
      Submodule.coe_zero] at h
    apply zero_ne_one h.symm
  apply hinj.ne this
  rw [LinearMap.map_zero, LinearMap.map_add, DirectSum.toModule_lof, DirectSum.toModule_lof]
  simp
#align counterexample.with_sign.not_injective Counterexample.withSign.not_injective

/-- And so they do not represent an internal direct sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77546ffbf961512b767fb9b81e6806ccff232c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

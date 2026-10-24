# multiplicity_sub_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bd6833f72678fc6e2056d6efc6edb9556dfeef4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ae9c65-5b94-472e-5282-a02d4bcde479",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34572561-6fec-ebf3-5269-b1af461d761d",
  "kind": "theorem",
  "lexical_name": "multiplicity_sub_multiplicity",
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
  "slug": "multiplicity-sub-multiplicity--636f20caa06e33c24c0371fa",
  "source": {
    "blob": "0bd6833f72678fc6e2056d6efc6edb9556dfeef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 234,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:636f20caa06e33c24c0371fa41c18b9e9446aa82480f35bd34b5488d816482b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34572561-6fec-ebf3-5269-b1af461d761d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_sub_multiplicity {q : ℚ} (hp : p ≠ 1) (hq : q ≠ 0) :
    padicValRat p q =
      (multiplicity (p : ℤ) q.num).get (finite_int_iff.2 ⟨hp, Rat.num_ne_zero_of_ne_zero hq⟩) -
        (multiplicity p q.den).get
          (by
            rw [← finite_iff_dom, finite_nat_iff]
            exact ⟨hp, q.pos⟩) := by
  rw [padicValRat, padicValInt.of_ne_one_ne_zero hp, padicValNat, dif_pos]
  · exact ⟨hp, q.pos⟩
  · exact Rat.num_ne_zero_of_ne_zero hq
#align padic_val_rat.multiplicity_sub_multiplicity padicValRat.multiplicity_sub_multiplicity

/-- The `p`-adic value of an integer `z ≠ 0` is its `p`-adic value as a rational. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd6833f72678fc6e2056d6efc6edb9556dfeef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

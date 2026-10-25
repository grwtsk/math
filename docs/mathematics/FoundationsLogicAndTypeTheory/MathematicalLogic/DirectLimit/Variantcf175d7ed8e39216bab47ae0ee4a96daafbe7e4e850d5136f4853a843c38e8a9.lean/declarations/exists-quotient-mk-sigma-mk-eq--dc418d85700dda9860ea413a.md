# exists_quotient_mk'_sigma_mk'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd79dbb9939a80f332481818e258c48f24a90b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62071e89-859a-fd09-7f9e-9d318a1dd208",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c60d842-5b8f-8681-8cca-a218d672b20f",
  "kind": "theorem",
  "lexical_name": "exists_quotient_mk'_sigma_mk'_eq",
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
  "slug": "exists-quotient-mk-sigma-mk-eq--dc418d85700dda9860ea413a",
  "source": {
    "blob": "2fd79dbb9939a80f332481818e258c48f24a90b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc418d85700dda9860ea413a027b10cabe4bd2387248841ee6dfcc35acfdd332",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c60d842-5b8f-8681-8cca-a218d672b20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_quotient_mk'_sigma_mk'_eq {α : Type*} [Finite α] (x : α → DirectLimit G f) :
    ∃ (i : ι) (y : α → G i), x = fun a => ⟦.mk f i (y a)⟧ := by
  obtain ⟨i, hi⟩ := Finite.bddAbove_range fun a => (x a).out.1
  refine ⟨i, unify f (Quotient.out ∘ x) i hi, ?_⟩
  ext a
  rw [Quotient.eq_mk_iff_out, unify]
  generalize_proofs r
  change _ ≈ Structure.Sigma.mk f i (f (Quotient.out (x a)).fst i r (Quotient.out (x a)).snd)
  have : (.mk f i (f (Quotient.out (x a)).fst i r (Quotient.out (x a)).snd) : Σˣ f).fst ≤ i :=
    le_rfl
  rw [equiv_iff G f (i := i) (hi _) this]
  · simp only [DirectedSystem.map_self]
  exact ⟨a, rfl⟩

variable (L ι)

set_option backward.isDefEq.respectTransparency false in
/-- The canonical map from a component to the direct limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd79dbb9939a80f332481818e258c48f24a90b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

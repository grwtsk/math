# order_ofForallLtEqZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ebfab55-26da-088c-a3d5-0a13b185da6e",
  "kind": "theorem",
  "lexical_name": "order_ofForallLtEqZero",
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
  "slug": "order-offoralllteqzero--9b5991ee8588f0454617b01f",
  "source": {
    "blob": "ef9affefdad12f3840d7611b73730f388339ef9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b5991ee8588f0454617b01f1516eacc07c46c4af412e3768af42179bba10e6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ebfab55-26da-088c-a3d5-0a13b185da6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_ofForallLtEqZero [Zero Γ] (f : Γ → R) (hf : f ≠ 0) (n : Γ)
    (hn : ∀ (m : Γ), m < n → f m = 0) :
    n ≤ order (ofSuppBddBelow f (forallLTEqZero_supp_BddBelow f n hn)) := by
  dsimp only [order]
  by_cases h : ofSuppBddBelow f (forallLTEqZero_supp_BddBelow f n hn) = 0
  cases h
  · exact (hf rfl).elim
  simp_all only [dite_false]
  rw [Set.IsWF.le_min_iff]
  intro m hm
  rw [HahnSeries.support, Function.mem_support, ne_eq] at hm
  exact not_lt.mp (mt (hn m) hm)

end LocallyFiniteLinearOrder

end HahnSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9affefdad12f3840d7611b73730f388339ef9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Equiv.swap_bijOn_exchange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62729e7b7621bb67e011abe67b76700d072c2cbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a776df5d1718442f604201f918d081f1274e9eab119e28c86f6c7f212e748ff5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24c6fc95-b508-ba13-f346-6bfd464bd72f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8946bdc8-a81f-c235-d367-dd80a198612c",
  "kind": "theorem",
  "lexical_name": "Equiv.swap_bijOn_exchange",
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
  "slug": "equiv-swap-bijon-exchange--9831f89e28294feb078529c3",
  "source": {
    "blob": "62729e7b7621bb67e011abe67b76700d072c2cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 649,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta776df5d1718442f604201f918d081f1274e9eab119e28c86f6c7f212e748ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9831f89e28294feb078529c3479bec2752bd2214b239a2421bd8430ec27bcd70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta776df5d1718442f604201f918d081f1274e9eab119e28c86f6c7f212e748ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8946bdc8-a81f-c235-d367-dd80a198612c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.swap_bijOn_exchange (ha : a ∈ s) (hb : b ∉ s) :
    BijOn (Equiv.swap a b) s (insert b (s \ {a})) := by
  refine ⟨fun x hx ↦ ?_, (Equiv.injective _).injOn, fun x hx ↦ ?_⟩
  · obtain (rfl | hxa) := eq_or_ne x a
    · simp [swap_apply_left]
    rw [swap_apply_of_ne_of_ne hxa (by rintro rfl; contradiction)]
    exact .inr ⟨hx, hxa⟩
  obtain (rfl | hxb) := eq_or_ne x b
  · exact ⟨a, ha, by simp⟩
  simp only [mem_insert_iff, mem_diff, mem_singleton_iff, or_iff_right hxb] at hx
  exact ⟨x, hx.1, swap_apply_of_ne_of_ne hx.2 hxb⟩

end Swap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta776df5d1718442f604201f918d081f1274e9eab119e28c86f6c7f212e748ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta776df5d1718442f604201f918d081f1274e9eab119e28c86f6c7f212e748ff5.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62729e7b7621bb67e011abe67b76700d072c2cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

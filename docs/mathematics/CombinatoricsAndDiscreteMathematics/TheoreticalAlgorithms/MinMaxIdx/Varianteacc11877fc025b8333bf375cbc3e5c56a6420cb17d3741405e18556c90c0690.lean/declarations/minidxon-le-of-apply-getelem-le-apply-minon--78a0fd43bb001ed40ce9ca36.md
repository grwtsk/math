# minIdxOn_le_of_apply_getElem_le_apply_minOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0449482ed15e28382cb6edb81a59c8a350bd14b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b0d48bc-dd3b-1db3-9a8b-48aed94223b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0793e2ee-2783-4a0a-7815-01e3e16b66d8",
  "kind": "theorem",
  "lexical_name": "minIdxOn_le_of_apply_getElem_le_apply_minOn",
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
  "slug": "minidxon-le-of-apply-getelem-le-apply-minon--78a0fd43bb001ed40ce9ca36",
  "source": {
    "blob": "0449482ed15e28382cb6edb81a59c8a350bd14b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a0fd43bb001ed40ce9ca36647cf7a8f5d45260bb361081f35b387d7a8020b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0793e2ee-2783-4a0a-7815-01e3e16b66d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem minIdxOn_le_of_apply_getElem_le_apply_minOn [LE β] [DecidableLE β] [IsLinearPreorder β]
    {f : α → β} {xs : List α} (h : xs ≠ [])
    {k : Nat} (hi : k < xs.length) (hle : f xs[k] ≤ f (xs.minOn f h)) :
    xs.minIdxOn f h ≤ k := by
  obtain ⟨i, _, hi, _, h'⟩ := minIdxOn_eq_go_drop (f := f) h (k := k)
  rw [h']
  refine Nat.le_trans ?_ hi
  apply Nat.le_of_eq
  apply minIdxOn.go_eq_of_forall_le
  intro y hy
  refine le_trans (List.apply_minOn_le_of_mem (y := xs[k]) (by rw [mem_take_iff_getElem]; exact ⟨k, by omega, rfl⟩)) ?_
  refine le_trans hle ?_
  apply List.apply_minOn_le_of_mem
  apply mem_of_mem_drop
  exact hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0449482ed15e28382cb6edb81a59c8a350bd14b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

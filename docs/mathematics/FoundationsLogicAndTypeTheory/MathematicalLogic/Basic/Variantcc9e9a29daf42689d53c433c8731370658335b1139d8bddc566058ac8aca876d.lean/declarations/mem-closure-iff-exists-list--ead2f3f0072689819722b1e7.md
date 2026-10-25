# mem_closure_iff_exists_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1988022f-ab56-bf82-cd0f-930698d9a4cc",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff_exists_list",
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
  "slug": "mem-closure-iff-exists-list--ead2f3f0072689819722b1e7",
  "source": {
    "blob": "ed44f462e3856c91036f6b95294daf1b751025e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 515,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc9e9a29daf42689d53c433c8731370658335b1139d8bddc566058ac8aca876d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead2f3f0072689819722b1e7fb807423802366bb0c989d7b6a5156ee229a9c41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc9e9a29daf42689d53c433c8731370658335b1139d8bddc566058ac8aca876d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1988022f-ab56-bf82-cd0f-930698d9a4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff_exists_list {R} [Semiring R] {s : Set R} {x} :
    x ∈ closure s ↔ ∃ L : List (List R), (∀ t ∈ L, ∀ y ∈ t, y ∈ s) ∧ (L.map List.prod).sum = x := by
  constructor
  · intro hx
    rw [mem_closure_iff] at hx
    induction hx using AddSubmonoid.closure_induction with
    | mem x hx =>
      suffices ∃ t : List R, (∀ y ∈ t, y ∈ s) ∧ t.prod = x from
        let ⟨t, ht1, ht2⟩ := this
        ⟨[t], List.forall_mem_singleton.2 ht1, by
          rw [List.map_singleton, List.sum_singleton, ht2]⟩
      induction hx using Submonoid.closure_induction with
      | mem x hx => exact ⟨[x], List.forall_mem_singleton.2 hx, List.prod_singleton⟩
      | one => exact ⟨[], List.forall_mem_nil _, rfl⟩
      | mul x y _ _ ht hu =>
        obtain ⟨⟨t, ht1, ht2⟩, ⟨u, hu1, hu2⟩⟩ := And.intro ht hu
        exact ⟨t ++ u, List.forall_mem_append.2 ⟨ht1, hu1⟩, by rw [List.prod_append, ht2, hu2]⟩
    | one => exact ⟨[], List.forall_mem_nil _, rfl⟩
    | mul x y _ _ hL hM =>
      obtain ⟨⟨L, HL1, HL2⟩, ⟨M, HM1, HM2⟩⟩ := And.intro hL hM
      exact ⟨L ++ M, List.forall_mem_append.2 ⟨HL1, HM1⟩, by
        rw [List.map_append, List.sum_append, HL2, HM2]⟩
  · rintro ⟨L, HL1, rfl⟩
    exact
      list_sum_mem fun r hr =>
        let ⟨t, ht1, ht2⟩ := List.mem_map.1 hr
        ht2 ▸ list_prod_mem _ fun y hy => subset_closure <| HL1 t ht1 y hy

variable (R) in
/-- `closure` forms a Galois insertion with the coercion to set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc9e9a29daf42689d53c433c8731370658335b1139d8bddc566058ac8aca876d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc9e9a29daf42689d53c433c8731370658335b1139d8bddc566058ac8aca876d.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed44f462e3856c91036f6b95294daf1b751025e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

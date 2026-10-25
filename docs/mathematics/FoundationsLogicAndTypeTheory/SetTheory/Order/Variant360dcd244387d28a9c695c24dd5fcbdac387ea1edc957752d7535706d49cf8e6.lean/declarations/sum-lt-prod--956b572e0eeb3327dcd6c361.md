# sum_lt_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 560,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9689c164-8ed3-7f2a-06c8-afeb6cc883a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e24fe23-f8dc-fbb0-a07e-ff1956bf987e",
  "kind": "theorem",
  "lexical_name": "sum_lt_prod",
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
  "slug": "sum-lt-prod--956b572e0eeb3327dcd6c361",
  "source": {
    "blob": "fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 560,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:956b572e0eeb3327dcd6c361719434250471fcbe05c4fa9e045b375832f6229b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e24fe23-f8dc-fbb0-a07e-ff1956bf987e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_lt_prod {ι} (f g : ι → Cardinal) (H : ∀ i, f i < g i) : sum f < prod g :=
  lt_of_not_ge fun ⟨F⟩ => by
    have : Inhabited (∀ i : ι, (g i).out) := by
      refine ⟨fun i => Classical.choice <| mk_ne_zero_iff.1 ?_⟩
      rw [mk_out]
      exact (H i).ne_bot
    let G := invFun F
    have sG : Surjective G := invFun_surjective F.2
    choose C hc using
      show ∀ i, ∃ b, ∀ a, G ⟨i, a⟩ i ≠ b by
        intro i
        simp only [not_exists.symm, not_forall.symm]
        refine fun h => (H i).not_le ?_
        rw [← mk_out (f i), ← mk_out (g i)]
        exact ⟨Embedding.ofSurjective _ h⟩
    let ⟨⟨i, a⟩, h⟩ := sG C
    exact hc i a (congr_fun h _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

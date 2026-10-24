# SatisfiesM_anyM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7629f791c23a4dd8cca3f7810ed72cf193315b66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5aa9b69-6c1c-1d0b-ff4e-09c6444c717d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f127ac54-81b3-a3b7-c9fe-ae85a87da38a",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_anyM",
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
  "slug": "satisfiesm-anym--c4e885774444ac2c03b7a2c9",
  "source": {
    "blob": "7629f791c23a4dd8cca3f7810ed72cf193315b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4e885774444ac2c03b7a2c9377398a89b63a99602397428d251554e05ead8f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f127ac54-81b3-a3b7-c9fe-ae85a87da38a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_anyM [Monad m] [LawfulMonad m] {p : α → m Bool} {as : Array α}
    (hstart : start ≤ min stop as.size) (tru : Prop) (fal : Nat → Prop) (h0 : fal start)
    (hp : ∀ i : Fin as.size, i.1 < stop → fal i.1 →
      SatisfiesM (bif · then tru else fal (i + 1)) (p as[i])) :
    SatisfiesM
      (fun res => bif res then tru else fal (min stop as.size))
      (anyM p as start stop) := by
  let rec go {stop j} (hj' : j ≤ stop) (hstop : stop ≤ as.size) (h0 : fal j)
    (hp : ∀ i : Fin as.size, i.1 < stop → fal i.1 →
      SatisfiesM (bif · then tru else fal (i + 1)) (p as[i])) :
    SatisfiesM
      (fun res => bif res then tru else fal stop)
      (anyM.loop p as stop hstop j) := by
    unfold anyM.loop; split
    · next hj =>
      exact (hp ⟨j, Nat.lt_of_lt_of_le hj hstop⟩ hj h0).bind fun
        | true, h => .pure h
        | false, h => go hj hstop h hp
    · next hj => exact .pure <| Nat.le_antisymm hj' (Nat.ge_of_not_lt hj) ▸ h0
    termination_by stop - j
  simp only [Array.anyM_eq_anyM_loop]
  exact go hstart _ h0 fun i hi => hp i <| Nat.lt_of_lt_of_le hi <| Nat.min_le_left ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7629f791c23a4dd8cca3f7810ed72cf193315b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# card_of_cycleType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 694,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c217976f-c7d1-5b19-f6e7-baeb1abe5cfd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:313690d9-c5ae-0fb8-7c08-ba5b5a97e2af",
  "kind": "theorem",
  "lexical_name": "card_of_cycleType",
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
  "slug": "card-of-cycletype--049f9ffd720052e1ed81988c",
  "source": {
    "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 694,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049f9ffd720052e1ed81988cabf7822d4546d1e7a13ad99cb498f6c58d1f2b55",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:313690d9-c5ae-0fb8-7c08-ba5b5a97e2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_of_cycleType (m : Multiset ℕ) :
    #({g | g.cycleType = m} : Finset (Perm α)) =
      if m.sum ≤ Fintype.card α ∧ ∀ a ∈ m, 2 ≤ a then
        (Fintype.card α)! /
          ((Fintype.card α - m.sum)! * m.prod * (∏ n ∈ m.toFinset, (m.count n)!))
      else 0 := by
  split_ifs with hm
  · -- nonempty case
    apply symm
    apply Nat.div_eq_of_eq_mul_left
    · have : 0 < m.prod := Multiset.prod_pos <| fun a ha => zero_lt_two.trans_le (hm.2 a ha)
      positivity
    rw [card_of_cycleType_mul_eq, ite_eq_left hm]
  · -- empty case
    exact (card_of_cycleType_eq_zero_iff α).mpr hm

open Fintype in
variable {α} in
/-- The number of cycles of given length -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91440cef8726265c304ec4e9f42971178fa1cbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

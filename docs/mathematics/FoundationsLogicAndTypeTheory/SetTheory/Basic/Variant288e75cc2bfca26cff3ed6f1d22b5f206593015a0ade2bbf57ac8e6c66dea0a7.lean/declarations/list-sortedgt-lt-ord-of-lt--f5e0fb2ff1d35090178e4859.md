# List.SortedGT.lt_ord_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab2f67a4-876f-18e4-3987-a00a45c897c2",
  "kind": "theorem",
  "lexical_name": "List.SortedGT.lt_ord_of_lt",
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
  "slug": "list-sortedgt-lt-ord-of-lt--f5e0fb2ff1d35090178e4859",
  "source": {
    "blob": "3e85583c4ae05dc9f06d3e3680c3196b8476d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1368,
    "line": 1352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5e0fb2ff1d35090178e4859b6676354e95545e377ba08ea406afea220023d0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab2f67a4-876f-18e4-3987-a00a45c897c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1352–1368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem List.SortedGT.lt_ord_of_lt [LinearOrder α] [WellFoundedLT α] {l m : List α}
    {o : Ordinal} (hl : l.SortedGT) (hm : m.SortedGT) (hmltl : m < l)
    (hlt : ∀ i ∈ l, Ordinal.typein (α := α) (· < ·) i < o) :
      ∀ i ∈ m, Ordinal.typein (α := α) (· < ·) i < o := by
  replace hmltl : List.Lex (· < ·) m l := hmltl
  cases l with
  | nil => simp at hmltl
  | cons a as =>
    cases m with
    | nil => intro i hi; simp at hi
    | cons b bs =>
      intro i hi
      suffices h : i ≤ a by refine lt_of_le_of_lt ?_ (hlt a mem_cons_self); simpa
      cases hi with
      | head as => exact List.head_le_of_lt hmltl
      | tail b hi => exact le_of_lt (lt_of_lt_of_le (List.rel_of_pairwise_cons hm.pairwise hi)
          (List.head_le_of_lt hmltl))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean#L1352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e85583c4ae05dc9f06d3e3680c3196b8476d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

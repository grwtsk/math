# Sublist.orderedInsert_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27e43c81-9856-322d-f685-af7b9b68df0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a745cba5-35e0-612b-5229-e0aea515b656",
  "kind": "theorem",
  "lexical_name": "Sublist.orderedInsert_sublist",
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
  "slug": "sublist-orderedinsert-sublist--9db4ba3aa91ef2f2a743226d",
  "source": {
    "blob": "cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9db4ba3aa91ef2f2a743226d00539d1d537a81be72f48918b6208735d9f0b79e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a745cba5-35e0-612b-5229-e0aea515b656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sublist.orderedInsert_sublist [IsTrans α r] {as bs} (x) (hs : as <+ bs)
    (hb : bs.Pairwise r) : orderedInsert r x as <+ orderedInsert r x bs := by
  cases as with
  | nil => simp
  | cons a as =>
    cases bs with
    | nil => contradiction
    | cons b bs =>
      unfold orderedInsert
      cases hs <;> split_ifs with hr
      · exact .cons_cons _ <| .cons _ ‹a :: as <+ bs›
      · have ih := orderedInsert_sublist x ‹a :: as <+ bs› hb.of_cons
        simp only [hr, orderedInsert_cons, ite_true] at ih
        exact .trans ih <| .cons _ (.refl _)
      · have hba := pairwise_cons.mp hb |>.left _ (mem_of_cons_sublist ‹a :: as <+ bs›)
        exact absurd (trans_of _ ‹r x b› hba) hr
      · have ih := orderedInsert_sublist x ‹a :: as <+ bs› hb.of_cons
        rw [orderedInsert_cons, if_neg hr] at ih
        exact .cons _ ih
      · simp_all
      · exact .cons_cons _ <| orderedInsert_sublist x ‹as <+ bs› hb.of_cons

section TotalAndTransitive

variable [Std.Total r] [IsTrans α r]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

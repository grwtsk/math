# sortedGT_ofFn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93f253e0-14ac-7abc-a65f-3ab182aea94b",
  "kind": "theorem",
  "lexical_name": "sortedGT_ofFn_iff",
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
  "slug": "sortedgt-offn-iff--818fbb34a4fe9c0a6b6f7d3c",
  "source": {
    "blob": "cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 557,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:818fbb34a4fe9c0a6b6f7d3c9a376eb63ecb85549cb9d767035754f4917f7f18",
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

Occurrence: `result:93f253e0-14ac-7abc-a65f-3ab182aea94b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem sortedGT_ofFn_iff : (ofFn f).SortedGT ↔ StrictAnti f := by
  simp only [sortedGT_iff_strictAnti_get, StrictAnti, Fin.forall_iff,
    length_ofFn, get_ofFn, Fin.cast_mk, Fin.mk_lt_mk]

@[deprecated (since := "2025-11-27")] alias sorted_le_ofFn_iff := sortedLE_ofFn_iff
@[deprecated (since := "2025-11-27")] alias sorted_lt_ofFn_iff := sortedLT_ofFn_iff
@[deprecated (since := "2025-11-27")] alias sorted_ge_ofFn_iff := sortedGE_ofFn_iff
@[deprecated (since := "2025-11-27")] alias sorted_gt_ofFn_iff := sortedGT_ofFn_iff

/-- The list obtained from a monotone tuple is sorted. -/
protected alias ⟨SortedLE.monotone, _root_.Monotone.sortedLE_ofFn⟩ := sortedLE_ofFn_iff
/-- The list obtained from an antitone tuple is sorted. -/
protected alias ⟨SortedGE.antitone, _root_.Antitone.sortedGE_ofFn⟩ := sortedGE_ofFn_iff
/-- The list obtained from a strictly monotone tuple is sorted. -/
protected alias ⟨SortedLT.strictMono, _root_.StrictMono.sortedLT_ofFn⟩ := sortedLT_ofFn_iff
/-- The list obtained from a strictly antitone tuple is sorted. -/
protected alias ⟨SortedGT.strictAnti, _root_.StrictAnti.sortedGT_ofFn⟩ := sortedGT_ofFn_iff

end OfFn

section Reverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

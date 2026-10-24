# sortedGT_ofFn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5588f7a-e860-47d1-ba67-cabd90ff7273",
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
  "slug": "sortedgt-offn-iff--157bef81333de04ad82b9c63",
  "source": {
    "blob": "9012b055d844f061694e062516bbcc885c6940d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 565,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant6df4b3a64de97aa17801a2712eaba7d7ac8aa5fd5c9f48d31c4a0e8de34a1ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:157bef81333de04ad82b9c6369f3b0bbd481be3c559c9873ac9ac9c2eedeb412",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant6df4b3a64de97aa17801a2712eaba7d7ac8aa5fd5c9f48d31c4a0e8de34a1ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5588f7a-e860-47d1-ba67-cabd90ff7273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–586.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant6df4b3a64de97aa17801a2712eaba7d7ac8aa5fd5c9f48d31c4a0e8de34a1ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant6df4b3a64de97aa17801a2712eaba7d7ac8aa5fd5c9f48d31c4a0e8de34a1ca5.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9012b055d844f061694e062516bbcc885c6940d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

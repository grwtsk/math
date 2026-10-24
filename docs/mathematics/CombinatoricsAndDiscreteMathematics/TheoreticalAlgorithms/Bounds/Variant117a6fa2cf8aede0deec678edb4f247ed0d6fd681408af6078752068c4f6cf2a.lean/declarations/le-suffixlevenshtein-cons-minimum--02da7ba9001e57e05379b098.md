# le_suffixLevenshtein_cons_minimum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48fcf70f-0935-f9ae-ba4a-e195570943fe",
  "kind": "theorem",
  "lexical_name": "le_suffixLevenshtein_cons_minimum",
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
  "slug": "le-suffixlevenshtein-cons-minimum--02da7ba9001e57e05379b098",
  "source": {
    "blob": "74556206fd266f8c3f736934df0f4755127f7fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02da7ba9001e57e05379b098ee95565e17b66e0e3f0ebee821bf5e47fd813df6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48fcf70f-0935-f9ae-ba4a-e195570943fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_suffixLevenshtein_cons_minimum (xs : List α) (y ys) :
    (suffixLevenshtein C xs ys).1.minimum ≤ (suffixLevenshtein C xs (y :: ys)).1.minimum := by
  apply List.le_minimum_of_forall_le
  simp only [suffixLevenshtein_eq_tails_map]
  simp only [List.mem_map, List.mem_tails, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
  intro a suff
  refine (?_ : _ ≤ _).trans (suffixLevenshtein_minimum_le_levenshtein_cons _ _ _)
  simp only [suffixLevenshtein_eq_tails_map]
  apply List.le_minimum_of_forall_le
  intro b m
  replace m : ∃ a_1, a_1 <:+ a ∧ levenshtein C a_1 ys = b
  · simpa using m
  obtain ⟨a', suff', rfl⟩ := m
  apply List.minimum_le_of_mem'
  simp only [List.mem_map, List.mem_tails]
  suffices : ∃ a, a <:+ xs ∧ levenshtein C a ys = levenshtein C a' ys
  · simpa
  exact ⟨a', suff'.trans suff, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74556206fd266f8c3f736934df0f4755127f7fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Indep.exists_insert_of_not_isBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0bc30e5-92f9-b277-7719-6a177b426b59",
  "kind": "theorem",
  "lexical_name": "Indep.exists_insert_of_not_isBase",
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
  "slug": "indep-exists-insert-of-not-isbase--bd5275ba59a4d2f7b9762de2",
  "source": {
    "blob": "074cdae84f92ec170c9370dfe9c5909eeac02301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 684,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5275ba59a4d2f7b9762de21aacb9b573eec455b7e883592240e233fcf10429",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0bc30e5-92f9-b277-7719-6a177b426b59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Indep.exists_insert_of_not_isBase (hI : M.Indep I) (hI' : ¬M.IsBase I) (hB : M.IsBase B) :
    ∃ e ∈ B \ I, M.Indep (insert e I) := by
  obtain ⟨B', hB', hIB'⟩ := hI.exists_isBase_superset
  obtain ⟨x, hxB', hx⟩ := exists_of_ssubset (hIB'.ssubset_of_ne (by (rintro rfl; exact hI' hB')))
  by_cases hxB : x ∈ B
  · exact ⟨x, ⟨hxB, hx⟩, hB'.indep.subset (insert_subset hxB' hIB')⟩
  obtain ⟨e,he, hBase⟩ := hB'.exchange hB ⟨hxB',hxB⟩
  exact ⟨e, ⟨he.1, notMem_subset hIB' he.2⟩,
    indep_iff.2 ⟨_, hBase, insert_subset_insert (subset_diff_singleton hIB' hx)⟩⟩

/-- This is the same as `Indep.exists_insert_of_not_isBase`, but phrased so that
  it is defeq to the augmentation axiom for independent sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074cdae84f92ec170c9370dfe9c5909eeac02301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

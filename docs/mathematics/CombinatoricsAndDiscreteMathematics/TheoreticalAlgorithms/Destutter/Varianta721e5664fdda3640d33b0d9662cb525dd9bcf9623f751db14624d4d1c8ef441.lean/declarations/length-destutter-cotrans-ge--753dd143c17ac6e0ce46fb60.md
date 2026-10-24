# length_destutter'_cotrans_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47b74339afca40ece414f48bbd4c84c20be5c523",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a721e5664fdda3640d33b0d9662cb525dd9bcf9623f751db14624d4d1c8ef441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82ce2a2f-acb7-83eb-a548-6a46432cab3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:925f6221-6b15-9fde-19fd-2921baa1f5dd",
  "kind": "theorem",
  "lexical_name": "length_destutter'_cotrans_ge",
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
  "slug": "length-destutter-cotrans-ge--753dd143c17ac6e0ce46fb60",
  "source": {
    "blob": "47b74339afca40ece414f48bbd4c84c20be5c523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Varianta721e5664fdda3640d33b0d9662cb525dd9bcf9623f751db14624d4d1c8ef441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753dd143c17ac6e0ce46fb604f8cc99448e25f38782b23325c1152364d6754be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Varianta721e5664fdda3640d33b0d9662cb525dd9bcf9623f751db14624d4d1c8ef441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:925f6221-6b15-9fde-19fd-2921baa1f5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_destutter'_cotrans_ge [i : IsTrans α Rᶜ] :
    ∀ {a} {l : List α}, ¬R b a → (l.destutter' R b).length ≤ (l.destutter' R a).length
  | a, [], hba => by simp
  | a, c :: l, hba => by
    by_cases hbc : R b c
    case pos =>
      have hac : ¬Rᶜ a c := (mt (_root_.trans hba)) (not_not.2 hbc)
      simp_rw [destutter', ite_eq_left (not_not.1 hac), ite_eq_left hbc, length_cons, le_refl]
    case neg =>
      simp only [destutter', ite_eq_right hbc]
      by_cases hac : R a c
      case pos =>
        simp only [ite_eq_left hac, length_cons]
        exact Nat.le_succ_of_le (length_destutter'_cotrans_ge hbc)
      case neg =>
        simp only [ite_eq_right hac]
        exact length_destutter'_cotrans_ge hba

/-- `List.destutter'` on a relation like `≠`, whose negation is an equivalence, gives the same
length if the first elements are not related. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Varianta721e5664fdda3640d33b0d9662cb525dd9bcf9623f751db14624d4d1c8ef441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Varianta721e5664fdda3640d33b0d9662cb525dd9bcf9623f751db14624d4d1c8ef441.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b74339afca40ece414f48bbd4c84c20be5c523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tag_substitution_size_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5acf76-5f43-4078-40f8-95f0f5c44f35",
  "kind": "theorem",
  "lexical_name": "tag_substitution_size_bound",
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
  "slug": "tag-substitution-size-bound--bc60e98a4b9a920b99b93488",
  "source": {
    "blob": "dda9b2c122e73bc974535fb3ea379f898accc971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc60e98a4b9a920b99b934881c042505ce6f6aee9762ea30dece468e5f41afc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5acf76-5f43-4078-40f8-95f0f5c44f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tag_substitution_size_bound (term : Term) (substitution : List Term) :
    (term.substitute substitution).size ≤ term.size + listMax (substitution.map Term.size) := by
  induction term with
  | «variable» index =>
    cases image : substitution[index]? with
    | none => simp [Term.substitute, Term.size, image]
    | some result =>
      have bound : result.size ≤ listMax (substitution.map Term.size) := le_listMax
        (List.mem_map.mpr ⟨result, List.mem_of_getElem? image, rfl⟩)
      simpa [Term.substitute, Term.size, image] using Nat.le_trans bound
        (Nat.le_add_left _ 1)
  | nullary constructor => simp [Term.substitute, Term.size]
  | unary constructor argument ih => simp only [Term.substitute, Term.size]; omega

/-- Every exact target height is bounded by the number of contracted constructor pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda9b2c122e73bc974535fb3ea379f898accc971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

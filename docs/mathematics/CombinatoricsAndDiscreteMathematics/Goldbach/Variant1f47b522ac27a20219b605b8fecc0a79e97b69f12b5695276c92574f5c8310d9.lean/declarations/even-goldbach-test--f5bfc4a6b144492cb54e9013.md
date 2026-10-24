# even_goldbach_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:151b5af8-3f42-9425-6668-1033170300a9",
  "kind": "theorem",
  "lexical_name": "even_goldbach_test",
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
  "slug": "even-goldbach-test--f5bfc4a6b144492cb54e9013",
  "source": {
    "blob": "8bbb036da106cf2916d9064566357bd5b0a27359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5bfc4a6b144492cb54e9013881a56c2f2dc5edeb1414f1579358fc9c913b52f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:151b5af8-3f42-9425-6668-1033170300a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_goldbach_test : even_conjecture 30 := by
  intro n hn he
  fin_cases hn
  all_goals try grind
  · exact ⟨2, 2, by decide⟩
  · exact ⟨3, 3, by decide⟩
  · exact ⟨3, 5, by decide⟩
  · exact ⟨5, 5, by decide⟩
  · exact ⟨5, 7, by decide⟩
  · exact ⟨7, 7, by decide⟩
  · exact ⟨5, 11, by decide⟩
  · exact ⟨7, 11, by decide⟩
  · exact ⟨7, 13, by decide⟩
  · exact ⟨11, 11, by decide⟩
  · exact ⟨11, 13, by decide⟩
  · exact ⟨13, 13, by decide⟩
  · exact ⟨11, 17, by decide⟩
  · exact ⟨13, 17, by decide⟩

@[blueprint
  "odd-goldbach"
  (title := "Odd Goldbach conjecture up to a given height")
  (statement := /--
  We say that the odd Goldbach conjecture is verified up to height $H$ if every odd
  integer between $5$ and $H$ is the sum of three primes. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbb036da106cf2916d9064566357bd5b0a27359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

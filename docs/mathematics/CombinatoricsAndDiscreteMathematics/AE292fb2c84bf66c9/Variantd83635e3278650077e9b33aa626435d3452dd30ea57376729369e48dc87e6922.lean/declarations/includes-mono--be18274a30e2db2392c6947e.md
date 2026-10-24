# includes_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b093c7b6-d259-8308-3c60-ecbb0da13fee",
  "kind": "theorem",
  "lexical_name": "includes_mono",
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
  "slug": "includes-mono--be18274a30e2db2392c6947e",
  "source": {
    "blob": "1e6172187c40ef20517efafde3cdbaf058436eaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AE292fb2c84bf66c9/Variantd83635e3278650077e9b33aa626435d3452dd30ea57376729369e48dc87e6922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be18274a30e2db2392c6947ee8a79d91f84bd1e449880e65afb12a297f73c978",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AE292fb2c84bf66c9/Variantd83635e3278650077e9b33aa626435d3452dd30ea57376729369e48dc87e6922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b093c7b6-d259-8308-3c60-ecbb0da13fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem includes_mono
    {boundary : Boundary} {small large : EntityProfile}
    (accepted : boundary.Accepts small)
    (subset : small.clauses ⊆ large.clauses)
    (noExcluded : Disjoint boundary.excludes large.clauses) :
    boundary.Accepts large :=
  ⟨Finset.Subset.trans accepted.1 subset, noExcluded⟩

end Boundary

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AE292fb2c84bf66c9/Variantd83635e3278650077e9b33aa626435d3452dd30ea57376729369e48dc87e6922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AE292fb2c84bf66c9/Variantd83635e3278650077e9b33aa626435d3452dd30ea57376729369e48dc87e6922.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e6172187c40ef20517efafde3cdbaf058436eaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

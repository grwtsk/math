# soninProjectionIncrement_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab957c28c7914322a02152e5d8e1df51eba8fd1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db976ae9-93a9-8811-ee7e-744d6851db88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55ad8c77-3b13-7f67-c78b-7d6a002664ee",
  "kind": "theorem",
  "lexical_name": "soninProjectionIncrement_nonnegative",
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
  "slug": "soninprojectionincrement-nonnegative--419346c3eec0126d70e6ddd2",
  "source": {
    "blob": "ab957c28c7914322a02152e5d8e1df51eba8fd1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProjectionDefect/Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:419346c3eec0126d70e6ddd20cdd4d91e18496f640ecf34137701c29ade53a4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProjectionDefect/Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ad8c77-3b13-7f67-c78b-7d6a002664ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem soninProjectionIncrement_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (source horizon : Finset Prime)
    (prime : Prime)
    (insertSubset :
      insert prime source ⊆ horizon) :
    model.Nonnegative
      (soninProjectionIncrement
        range source horizon prime) := by
  exact range.monotone
    (Finset.subset_insert prime source)
    insertSubset

end Mathematics.SemiLocalDefect.Sonin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProjectionDefect/Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProjectionDefect/Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab957c28c7914322a02152e5d8e1df51eba8fd1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

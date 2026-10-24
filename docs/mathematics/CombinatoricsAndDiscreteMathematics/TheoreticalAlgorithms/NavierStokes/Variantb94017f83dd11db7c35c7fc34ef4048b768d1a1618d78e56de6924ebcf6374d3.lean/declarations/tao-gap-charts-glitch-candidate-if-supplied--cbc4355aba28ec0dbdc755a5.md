# tao_gap_charts_glitch_candidate_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07f3556-e90b-959f-8126-2367dd1de272",
  "kind": "theorem",
  "lexical_name": "tao_gap_charts_glitch_candidate_if_supplied",
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
  "slug": "tao-gap-charts-glitch-candidate-if-supplied--cbc4355aba28ec0dbdc755a5",
  "source": {
    "blob": "116392e291d3ec9a9a86d933b72fe9e7d56ea895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc4355aba28ec0dbdc755a58f82297e8bd61961ac9e2a19a61f617350fe2e45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07f3556-e90b-959f-8126-2367dd1de272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tao_gap_charts_glitch_candidate_if_supplied
    (T : Folder.GrandChallenge.NavierStokes.TaoSortingContract)
    (hgap :
      Folder.GrandChallenge.NavierStokes.CriticalControlGap
        T.criticalControl) :
    Folder.GrandChallenge.NavierStokes.GlitchCandidate T.frame :=
  Folder.GrandChallenge.NavierStokes.tao_gap_charts_glitch_candidate_if_supplied
    T hgap

end GrandChallenge
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116392e291d3ec9a9a86d933b72fe9e7d56ea895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

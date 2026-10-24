# rank_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f10556492f309ed7ef1c09946213330ccbbb597",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba705b4a5e12709dfbd792ddd9946aafdcc276daf1a8778de760ec2f4e660363.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f9bd54-18fb-b69b-d924-c0a0469e5556",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c96f892-a56e-caaf-2b13-6611d5ab88ce",
  "kind": "theorem",
  "lexical_name": "rank_prod",
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
  "slug": "rank-prod--440084e5f4b5df44ede9ba70",
  "source": {
    "blob": "3f10556492f309ed7ef1c09946213330ccbbb597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variantba705b4a5e12709dfbd792ddd9946aafdcc276daf1a8778de760ec2f4e660363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440084e5f4b5df44ede9ba70fc93a56260968f9a3f7d31fbcc6217b9fbfde714",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variantba705b4a5e12709dfbd792ddd9946aafdcc276daf1a8778de760ec2f4e660363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c96f892-a56e-caaf-2b13-6611d5ab88ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_prod : Module.rank R (M × M') =
    Cardinal.lift.{v'} (Module.rank R M) + Cardinal.lift.{v, v'} (Module.rank R M') := by
  simpa [rank_eq_card_chooseBasisIndex R M, rank_eq_card_chooseBasisIndex R M', lift_umax]
    using ((chooseBasis R M).prod (chooseBasis R M')).mk_eq_rank.symm

/-- If `M` and `M'` are free (and lie in the same universe), the rank of `M × M'` is
  `(Module.rank R M) + (Module.rank R M')`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variantba705b4a5e12709dfbd792ddd9946aafdcc276daf1a8778de760ec2f4e660363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variantba705b4a5e12709dfbd792ddd9946aafdcc276daf1a8778de760ec2f4e660363.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f10556492f309ed7ef1c09946213330ccbbb597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

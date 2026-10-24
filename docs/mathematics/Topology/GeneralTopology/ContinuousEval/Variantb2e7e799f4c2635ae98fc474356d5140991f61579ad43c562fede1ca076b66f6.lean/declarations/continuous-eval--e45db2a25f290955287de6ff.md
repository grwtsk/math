# Continuous.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cd5e19fa0b439ace90574aa6e00910e434a81b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f597f04-c435-0a5b-7236-a7e54c55386c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3044ded-5037-6ad6-6806-918b25a9f963",
  "kind": "theorem",
  "lexical_name": "Continuous.eval",
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
  "slug": "continuous-eval--e45db2a25f290955287de6ff",
  "source": {
    "blob": "6cd5e19fa0b439ace90574aa6e00910e434a81b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e45db2a25f290955287de6ff607eaf596ac08b8829c4cc648c099bc8580e3577",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3044ded-5037-6ad6-6806-918b25a9f963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Continuous.eval (hf : Continuous f) (hg : Continuous g) :
    Continuous fun z ↦ f z (g z) :=
  continuous_eval.comp (hf.prodMk hg)

/-- If a type `F'` of bundled morphisms admits a continuous projection
to a type satisfying `ContinuousEval`,
then `F'` satisfies this predicate too.

The word "forget" in the name is motivated by the term "forgetful functor". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd5e19fa0b439ace90574aa6e00910e434a81b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

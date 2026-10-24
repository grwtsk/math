# auxMemKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55b78cefcf93430b2be0ba2b83112e31aa0d7819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2934bc53e901c49aac866eef8f8d87a719bf59ddcc281691914e575cbf6834d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dd3137e-1ded-636b-b72a-b1580b0fdc8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b91674a5-46a3-7a0d-d278-13050c40e4b6",
  "kind": "lemma",
  "lexical_name": "auxMemKer",
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
  "slug": "auxmemker--798c1fc1862be3ce7de04178",
  "source": {
    "blob": "55b78cefcf93430b2be0ba2b83112e31aa0d7819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 483,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant2934bc53e901c49aac866eef8f8d87a719bf59ddcc281691914e575cbf6834d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798c1fc1862be3ce7de0417893b792cf08977f26a4be6032f648b9579ca40ff6",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant2934bc53e901c49aac866eef8f8d87a719bf59ddcc281691914e575cbf6834d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b91674a5-46a3-7a0d-d278-13050c40e4b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma auxMemKer (z : T ⊗[S] P.toExtension.H1Cotangent) :
    LinearMap.liftBaseChange T (Extension.Cotangent.map (Q.toComp P).toExtensionHom)
      ((LinearMap.lTensor T Extension.h1Cotangentι) z) ∈
        (Q.comp P).toExtension.cotangentComplex.ker := by
  induction z with
  | tmul x y => simp [← Extension.CotangentSpace.map_cotangentComplex]
  | add x y hx hy => simpa using Submodule.add_mem _ hx hy

set_option backward.isDefEq.respectTransparency.types false in
open LinearMap in
/-- When $T$ is flat over $S$, the left bottom part of the snake lemma diagram used in
the construction of the connecting homomorphism `Algebra.Generators.H1Cotangent.δ`
naturally extends via a base change map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant2934bc53e901c49aac866eef8f8d87a719bf59ddcc281691914e575cbf6834d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant2934bc53e901c49aac866eef8f8d87a719bf59ddcc281691914e575cbf6834d3.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b78cefcf93430b2be0ba2b83112e31aa0d7819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

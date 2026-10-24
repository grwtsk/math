# ofJ_0_of_two_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa390ff80053227848f372af22a23763a22f4cad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6151fa74-7040-7981-8711-27b3f2ede217",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b67cf3f-5bb9-5473-8f76-0a226a51e08f",
  "kind": "lemma",
  "lexical_name": "ofJ_0_of_two_eq_zero",
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
  "slug": "ofj-0-of-two-eq-zero--bd98aef34cfbcdca82718a57",
  "source": {
    "blob": "aa390ff80053227848f372af22a23763a22f4cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1213,
    "line": 1209,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd98aef34cfbcdca82718a57f7ec08fddae4186ed9087b71a25bbc4b27b878b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b67cf3f-5bb9-5473-8f76-0a226a51e08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1209–1213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofJ_0_of_two_eq_zero (h2 : (2 : F) = 0) :
    ofJ 0 = @ofJ0 _ _ (invertibleOfNonzero <| two_or_three_ne_zero.neg_resolve_left h2) :=
  have := neZero_iff.2 <| two_or_three_ne_zero.neg_resolve_left h2
  ofJ_0_of_three_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean#L1209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa390ff80053227848f372af22a23763a22f4cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

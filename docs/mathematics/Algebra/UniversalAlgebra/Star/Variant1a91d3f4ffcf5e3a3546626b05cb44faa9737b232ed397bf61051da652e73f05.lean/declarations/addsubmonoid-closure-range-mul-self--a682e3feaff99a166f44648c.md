# addSubmonoid_closure_range_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f93b5298-2301-adf8-cfe4-efd3c76235fb",
  "kind": "lemma",
  "lexical_name": "addSubmonoid_closure_range_mul_self",
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
  "slug": "addsubmonoid-closure-range-mul-self--a682e3feaff99a166f44648c",
  "source": {
    "blob": "088dcfbacbbdfaecacc9aedd1e0eca8d1a50bd17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 64,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a682e3feaff99a166f44648c1e41e0928f68b3eaacfbfa25dea2d4d8cf491c28",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f93b5298-2301-adf8-cfe4-efd3c76235fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addSubmonoid_closure_range_mul_self : closure (range fun x : ℚ ↦ x * x) = nonneg _ := by
  simpa only [sq] using addSubmonoid_closure_range_pow two_ne_zero even_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088dcfbacbbdfaecacc9aedd1e0eca8d1a50bd17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

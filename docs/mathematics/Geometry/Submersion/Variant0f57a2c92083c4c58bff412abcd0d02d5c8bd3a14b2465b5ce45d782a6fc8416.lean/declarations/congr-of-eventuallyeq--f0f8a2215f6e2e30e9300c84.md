# congr_of_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4f27287-0424-574d-c880-141a785a55f1",
  "kind": "lemma",
  "lexical_name": "congr_of_eventuallyEq",
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
  "slug": "congr-of-eventuallyeq--f0f8a2215f6e2e30e9300c84",
  "source": {
    "blob": "1b2d6db7f87cab54ef603327a5fed6069f5d23d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 496,
    "path": "GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f8a2215f6e2e30e9300c844fa70e67e30dbda071a9386a22615828b9b20483",
  "verification": {
    "reference": "docs/verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4f27287-0424-574d-c880-141a785a55f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_of_eventuallyEq (hf : IsSubmersionAt I J n f x) (hfg : f =ᶠ[𝓝 x] g) :
    IsSubmersionAt I J n g x := by
  use hf.complement, by infer_instance, by infer_instance
  exact hf.isSubmersionAtOfComplement_complement.congr_of_eventuallyEq hfg

/-- If `f = g` on some neighbourhood of `x`,
then `f` is a submersion at `x` if and only if `g` is a submersion at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2d6db7f87cab54ef603327a5fed6069f5d23d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

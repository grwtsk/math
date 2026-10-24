# tensorProdEqualizer_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ae9b000b3662f396728e177a143790c79c24e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3796dde953c4cbbe057f0e2cd511f0a43b05b88fb1ae40c26bcb726d5cf89ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93e6ae80-0487-81e4-adf6-3239c7343d5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc16654a-7de0-8b69-6c5f-e0906533f5f8",
  "kind": "lemma",
  "lexical_name": "tensorProdEqualizer_ι",
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
  "slug": "tensorprodequalizer--16c481cd4a2f317a19cb3338",
  "source": {
    "blob": "b0ae9b000b3662f396728e177a143790c79c24e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 159,
    "path": "GRWTSK/Algebra/Limits/Variantd3796dde953c4cbbe057f0e2cd511f0a43b05b88fb1ae40c26bcb726d5cf89ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c481cd4a2f317a19cb3338db86c50417bd6c942257ce26ee292bc830b4db2c",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variantd3796dde953c4cbbe057f0e2cd511f0a43b05b88fb1ae40c26bcb726d5cf89ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc16654a-7de0-8b69-6c5f-e0906533f5f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorProdEqualizer_ι {A B : Under R} (f g : A ⟶ B) :
    (tensorProdEqualizer f g).ι = (tensorProd R S).map
      ((AlgHom.equalizer (toAlgHom f) (toAlgHom g)).val.toUnder) :=
  rfl

/-- If `S` is `R`-flat, `S ⊗[R] eq(f, g)` is isomorphic to `eq(𝟙 ⊗[R] f, 𝟙 ⊗[R] g)`. -/
-- marked noncomputable for performance (only)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variantd3796dde953c4cbbe057f0e2cd511f0a43b05b88fb1ae40c26bcb726d5cf89ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variantd3796dde953c4cbbe057f0e2cd511f0a43b05b88fb1ae40c26bcb726d5cf89ad.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ae9b000b3662f396728e177a143790c79c24e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

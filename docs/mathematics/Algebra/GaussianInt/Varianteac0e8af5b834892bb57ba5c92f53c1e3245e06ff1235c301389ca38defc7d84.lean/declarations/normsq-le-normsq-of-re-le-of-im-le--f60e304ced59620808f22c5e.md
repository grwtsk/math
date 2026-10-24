# normSq_le_normSq_of_re_le_of_im_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f582dbdc350d3ed49d61877fcdbae48205ae06b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb31549a-ba84-4144-ac1b-964f70268412",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83d6a4d4-8f61-1234-b0ad-f12e77d62eea",
  "kind": "theorem",
  "lexical_name": "normSq_le_normSq_of_re_le_of_im_le",
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
  "slug": "normsq-le-normsq-of-re-le-of-im-le--f60e304ced59620808f22c5e",
  "source": {
    "blob": "f582dbdc350d3ed49d61877fcdbae48205ae06b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 207,
    "path": "GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f60e304ced59620808f22c5e7458b41eeabf24392aef7a6a6addbf305b940483",
  "verification": {
    "reference": "docs/verification/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83d6a4d4-8f61-1234-b0ad-f12e77d62eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_le_normSq_of_re_le_of_im_le {x y : ℂ} (hre : |x.re| ≤ |y.re|)
    (him : |x.im| ≤ |y.im|) : Complex.normSq x ≤ Complex.normSq y := by
  rw [normSq_apply, normSq_apply, ← _root_.abs_mul_self, _root_.abs_mul, ←
      _root_.abs_mul_self y.re, _root_.abs_mul y.re, ← _root_.abs_mul_self x.im,
      _root_.abs_mul x.im, ← _root_.abs_mul_self y.im, _root_.abs_mul y.im]
  exact
      add_le_add (mul_self_le_mul_self (abs_nonneg _) hre) (mul_self_le_mul_self (abs_nonneg _) him)
#align gaussian_int.norm_sq_le_norm_sq_of_re_le_of_im_le GaussianInt.normSq_le_normSq_of_re_le_of_im_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582dbdc350d3ed49d61877fcdbae48205ae06b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

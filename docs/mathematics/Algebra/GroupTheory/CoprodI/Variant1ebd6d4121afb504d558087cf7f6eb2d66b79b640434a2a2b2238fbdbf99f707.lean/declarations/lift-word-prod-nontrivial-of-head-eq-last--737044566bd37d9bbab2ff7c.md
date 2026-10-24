# lift_word_prod_nontrivial_of_head_eq_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f70802d1aaab695449949288fd5f57b427d2c6b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 757,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4433ff17-d4c7-614a-2075-83a7d7ae880a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a92d344-7712-f01e-6796-b8279d837915",
  "kind": "theorem",
  "lexical_name": "lift_word_prod_nontrivial_of_head_eq_last",
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
  "slug": "lift-word-prod-nontrivial-of-head-eq-last--737044566bd37d9bbab2ff7c",
  "source": {
    "blob": "f70802d1aaab695449949288fd5f57b427d2c6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 757,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737044566bd37d9bbab2ff7c98b7b093c7d8856c66f88b168f7a1a3e3747ea86",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a92d344-7712-f01e-6796-b8279d837915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 757–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_word_prod_nontrivial_of_head_eq_last {i} (w : NeWord H i i) : lift f w.prod ≠ 1 := by
  obtain ⟨k, hk⟩ := exists_ne i
  exact lift_word_prod_nontrivial_of_other_i f X hXnonempty hXdisj hpp w hk hk
#align free_product.lift_word_prod_nontrivial_of_head_eq_last Monoid.CoprodI.lift_word_prod_nontrivial_of_head_eq_last

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean#L757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70802d1aaab695449949288fd5f57b427d2c6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

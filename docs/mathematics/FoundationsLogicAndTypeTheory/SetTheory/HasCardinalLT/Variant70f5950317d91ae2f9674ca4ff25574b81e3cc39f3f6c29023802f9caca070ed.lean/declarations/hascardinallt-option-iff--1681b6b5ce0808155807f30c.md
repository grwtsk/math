# hasCardinalLT_option_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6e1b39e46c500a776dc66a6aacc5c1e7a72893d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3391a8f-2d8a-226e-507b-efc067b71749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7887bec-7a29-ea7a-24ec-eb25a939b592",
  "kind": "lemma",
  "lexical_name": "hasCardinalLT_option_iff",
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
  "slug": "hascardinallt-option-iff--1681b6b5ce0808155807f30c",
  "source": {
    "blob": "b6e1b39e46c500a776dc66a6aacc5c1e7a72893d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1681b6b5ce0808155807f30c628d9f6a70ab2c93680221183172ed12af25795d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7887bec-7a29-ea7a-24ec-eb25a939b592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCardinalLT_option_iff (X : Type u) (κ : Cardinal.{w})
    (hκ : Cardinal.aleph0 ≤ κ) :
    HasCardinalLT (Option X) κ ↔ HasCardinalLT X κ := by
  rw [hasCardinalLT_iff_of_equiv (Equiv.optionEquivSumPUnit.{0} X),
    hasCardinalLT_sum_iff _ _ _ hκ, and_iff_left_iff_imp]
  refine fun _ ↦ HasCardinalLT.of_le ?_ hκ
  rw [hasCardinalLT_aleph0_iff]
  infer_instance

namespace HasCardinalLT

/-- For any `w`-small type `X`, there exists a regular cardinal `κ : Cardinal.{w}`
such that `HasCardinalLT X κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e1b39e46c500a776dc66a6aacc5c1e7a72893d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

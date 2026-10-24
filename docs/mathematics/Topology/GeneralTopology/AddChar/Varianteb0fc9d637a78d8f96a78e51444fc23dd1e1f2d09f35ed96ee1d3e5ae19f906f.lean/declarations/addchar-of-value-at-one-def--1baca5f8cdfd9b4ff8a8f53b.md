# addChar_of_value_at_one_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fac75608c46c85f39cea591ad436ba9497d51b80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:288d6c9c-8c1d-a1e5-7a86-2e9d8204a9c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c16ed608-acf3-b1cb-acf7-70af40b24d3a",
  "kind": "lemma",
  "lexical_name": "addChar_of_value_at_one_def",
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
  "slug": "addchar-of-value-at-one-def--1baca5f8cdfd9b4ff8a8f53b",
  "source": {
    "blob": "fac75608c46c85f39cea591ad436ba9497d51b80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1baca5f8cdfd9b4ff8a8f53b0886c20071feed0fec7351add4bba436238bb507",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16ed608-acf3-b1cb-acf7-70af40b24d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addChar_of_value_at_one_def {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    addChar_of_value_at_one r hr (1 : ℤ_[p]) = 1 + r := by
  change mahlerSeries (r ^ ·) ↑(1 : ℕ) = _
  rw [mahlerSeries_apply_nat hr le_rfl, Finset.sum_range_succ, Finset.sum_range_one,
    Nat.choose_zero_right, Nat.choose_self, one_smul, one_smul, pow_zero, pow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac75608c46c85f39cea591ad436ba9497d51b80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# getD_inter_of_contains_eq_false_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4480b41c-a2af-3578-0936-bb6436ea2adf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fd7512e-ada7-63c0-084d-4770aa6d6133",
  "kind": "theorem",
  "lexical_name": "getD_inter_of_contains_eq_false_left",
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
  "slug": "getd-inter-of-contains-eq-false-left--8a43ca79be0c05f560c746de",
  "source": {
    "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4614,
    "line": 4609,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a43ca79be0c05f560c746dedd6f02011e976875637ef9148518be737f6b092e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd7512e-ada7-63c0-084d-4770aa6d6133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4609–4614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_inter_of_contains_eq_false_left [TransOrd α] [LawfulEqOrd α] (h₁ : m₁.WF) (h₂ : m₂.WF)
    {k : α} {fallback : β k} (h : m₁.contains k = false) :
    (m₁.inter m₂ h₁.balanced).getD k fallback = fallback := by
  revert h
  simp_to_model [inter, getD, contains] using getValueCastD_filter_containsKey_of_containsKey_eq_false_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean#L4609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a21803e62d3ee266c84ee30f20e7924eb0ccf23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

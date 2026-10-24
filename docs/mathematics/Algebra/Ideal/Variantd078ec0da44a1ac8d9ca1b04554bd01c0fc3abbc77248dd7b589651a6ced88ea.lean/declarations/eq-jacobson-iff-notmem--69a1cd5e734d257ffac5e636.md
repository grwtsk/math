# eq_jacobson_iff_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93862cccffd4fcc11b634739f2c2e6d9df27ef7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe66e6b3-16df-40b2-5f47-44889525e9fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8f30a00-fedf-6632-faf8-c104b4f2787c",
  "kind": "theorem",
  "lexical_name": "eq_jacobson_iff_notMem",
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
  "slug": "eq-jacobson-iff-notmem--69a1cd5e734d257ffac5e636",
  "source": {
    "blob": "93862cccffd4fcc11b634739f2c2e6d9df27ef7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 161,
    "path": "GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69a1cd5e734d257ffac5e636c9bf9bbc943a1b7519a540a82dda308c284d0be4",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f30a00-fedf-6632-faf8-c104b4f2787c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_jacobson_iff_notMem :
    I.jacobson = I ↔ ∀ x ∉ I, ∃ M : Ideal R, (I ≤ M ∧ M.IsMaximal) ∧ x ∉ M := by
  constructor
  · intro h x hx
    rw [← h, Ideal.jacobson, mem_sInf] at hx
    push_neg at hx
    exact hx
  · refine fun h => le_antisymm (fun x hx => ?_) le_jacobson
    contrapose hx
    rw [Ideal.jacobson, mem_sInf]
    push_neg
    exact h x hx

@[deprecated (since := "2025-05-23")] alias eq_jacobson_iff_not_mem := eq_jacobson_iff_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93862cccffd4fcc11b634739f2c2e6d9df27ef7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# trans_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d3b37f8-43ea-d139-b02f-f118c9b9b065",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ec49ade-1d04-7289-b785-470aac7980bb",
  "kind": "theorem",
  "lexical_name": "trans_assoc",
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
  "slug": "trans-assoc--d798dc6e5e303bf8570172d3",
  "source": {
    "blob": "8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d798dc6e5e303bf8570172d3c353bcb7f041677a7d1ae02a71417ba72cf13a5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec49ade-1d04-7289-b785-470aac7980bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_assoc {x₀ x₁ x₂ x₃ : X}
    (γ₀ : Homotopic.Quotient x₀ x₁)
    (γ₁ : Homotopic.Quotient x₁ x₂)
    (γ₂ : Homotopic.Quotient x₂ x₃) :
    trans (trans γ₀ γ₁) γ₂ = trans γ₀ (trans γ₁ γ₂) := by
  induction γ₀ using Quotient.ind with | mk γ₀ =>
  induction γ₁ using Quotient.ind with | mk γ₁ =>
  induction γ₂ using Quotient.ind with | mk γ₂ =>
  simpa [← mk_trans, eq] using Homotopic.trans_assoc γ₀ γ₁ γ₂

end Quotient

end Homotopic

end Path

/-- The fundamental groupoid of a space `X` is defined to be a wrapper around `X`, and we
subsequently put a `CategoryTheory.Groupoid` structure on it. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

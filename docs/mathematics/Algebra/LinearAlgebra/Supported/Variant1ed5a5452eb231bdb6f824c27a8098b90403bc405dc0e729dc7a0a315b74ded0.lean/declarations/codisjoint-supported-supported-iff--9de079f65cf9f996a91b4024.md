# codisjoint_supported_supported_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ea63858f8c97a1316b409a93cde40d5b9da8959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:418da54e-d745-00ba-16c8-0fc3c82dbd6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f03c8c84-5b5d-1a80-239e-736ebbf3f21a",
  "kind": "lemma",
  "lexical_name": "codisjoint_supported_supported_iff",
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
  "slug": "codisjoint-supported-supported-iff--9de079f65cf9f996a91b4024",
  "source": {
    "blob": "0ea63858f8c97a1316b409a93cde40d5b9da8959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de079f65cf9f996a91b40247b4939f0def8a3717fa4880d6e45ad60f5d3664d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03c8c84-5b5d-1a80-239e-736ebbf3f21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma codisjoint_supported_supported_iff [Nontrivial M] {s t : Set α} :
    Codisjoint (supported M R s) (supported M R t) ↔ Codisjoint s t := by
  refine ⟨fun h ↦ codisjoint_iff.mpr (eq_top_iff.mpr fun a ↦ ?_), codisjoint_supported_supported⟩
  obtain ⟨x, hx⟩ := exists_ne (0 : M)
  rw [codisjoint_iff, ← supported_union, eq_top_iff'] at h
  simpa [Finsupp.mem_supported, Finsupp.support_single _ hx] using h (Finsupp.single a x)

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- Interpret `Finsupp.restrictSupportEquiv` as a linear equivalence between
`supported M R s` and `s →₀ M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ea63858f8c97a1316b409a93cde40d5b9da8959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

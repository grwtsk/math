# fourierInv_toLp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70745bc7afe2c033ccf890793947dc6bce062130",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb7ed500-9827-f1ac-7df0-3f1b0b228d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c9a0848-c3d1-1ece-83ec-fcbe69bd51a4",
  "kind": "theorem",
  "lexical_name": "fourierInv_toLp_eq",
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
  "slug": "fourierinv-tolp-eq--2ae3e3faaba2b3da3d38d625",
  "source": {
    "blob": "70745bc7afe2c033ccf890793947dc6bce062130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ae3e3faaba2b3da3d38d6256b6d89394da257150bb2d2865f3b0799ce6fea0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c9a0848-c3d1-1ece-83ec-fcbe69bd51a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierInv_toLp_eq (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) := by
  apply Lp.ext
  exact (fourierInv_memLp f hf hf2).coeFn_toLp.trans (fourierInv_toLp_ae f hf hf2).symm

/-- The admitted genuine inverse integral preserves the complete full-line L2 norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70745bc7afe2c033ccf890793947dc6bce062130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

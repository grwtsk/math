# piRing_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52128bab340b154d9f91dfaaef47e6c5d5dc67ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5eea7143-31d3-3f30-9e89-ac54e8c05e39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:944cf1a5-8ea2-1a76-fac1-3afe20b3f2fb",
  "kind": "theorem",
  "lexical_name": "piRing_symm_apply",
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
  "slug": "piring-symm-apply--721b340040c1128aa294c1a0",
  "source": {
    "blob": "52128bab340b154d9f91dfaaef47e6c5d5dc67ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721b340040c1128aa294c1a04635c6404928d18d751b70e898d1c4d723bd25f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:944cf1a5-8ea2-1a76-fac1-3afe20b3f2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piRing_symm_apply (f : ι → M) (g : ι → R) : (piRing R M ι S).symm f g = ∑ i, g i • f i := by
  simp [piRing, LinearMap.lsum_apply]
#align linear_equiv.pi_ring_symm_apply LinearEquiv.piRing_symm_apply

-- TODO additive version?
/-- `Equiv.sumArrowEquivProdArrow` as a linear equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52128bab340b154d9f91dfaaef47e6c5d5dc67ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

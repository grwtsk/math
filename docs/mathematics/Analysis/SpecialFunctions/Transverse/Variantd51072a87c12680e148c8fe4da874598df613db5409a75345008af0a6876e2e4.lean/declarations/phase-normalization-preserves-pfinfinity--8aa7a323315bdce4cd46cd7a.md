# phase_normalization_preserves_pfInfinity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a5794526d405b261d2f0714e78efc66172b324d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a81759f6-cc9a-02f2-70e4-06d84d99e04c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de0c73a7-cfae-2fce-53f0-073c8af701b8",
  "kind": "theorem",
  "lexical_name": "phase_normalization_preserves_pfInfinity",
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
  "slug": "phase-normalization-preserves-pfinfinity--8aa7a323315bdce4cd46cd7a",
  "source": {
    "blob": "0a5794526d405b261d2f0714e78efc66172b324d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa7a323315bdce4cd46cd7abd59f888b03af2c9fe3356025a19f5c3bfadcc53",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de0c73a7-cfae-2fce-53f0-073c8af701b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_normalization_preserves_pfInfinity (a : ℕ → ℝ) :
    Toeplitz.PFInfinity (Toeplitz.rescale (phaseUnit ^ 2) a) ↔ Toeplitz.PFInfinity a :=
  Toeplitz.pfInfinity_rescale_iff a (phaseUnit ^ 2) (pow_pos phaseUnit_positive _)

end

end FormalResearch.PositiveAtlas.Grassmannian.Transverse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5794526d405b261d2f0714e78efc66172b324d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

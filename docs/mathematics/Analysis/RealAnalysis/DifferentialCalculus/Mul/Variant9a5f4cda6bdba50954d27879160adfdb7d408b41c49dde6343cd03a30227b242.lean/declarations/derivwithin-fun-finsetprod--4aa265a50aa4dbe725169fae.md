# derivWithin_fun_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72534c7d4bdd8a8810e4657edf16caadf16a2d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a5f4cda6bdba50954d27879160adfdb7d408b41c49dde6343cd03a30227b242.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adb35e15-ef8d-4481-fce3-5795009b2664",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48a63ee8-d642-4f6c-3ec7-ba4da9ae6eea",
  "kind": "theorem",
  "lexical_name": "derivWithin_fun_finsetProd",
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
  "slug": "derivwithin-fun-finsetprod--4aa265a50aa4dbe725169fae",
  "source": {
    "blob": "72534c7d4bdd8a8810e4657edf16caadf16a2d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 451,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant9a5f4cda6bdba50954d27879160adfdb7d408b41c49dde6343cd03a30227b242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aa265a50aa4dbe725169faefa97cea6aa9fd17674a1566899bd4eb97acbe772",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant9a5f4cda6bdba50954d27879160adfdb7d408b41c49dde6343cd03a30227b242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48a63ee8-d642-4f6c-3ec7-ba4da9ae6eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivWithin_fun_finsetProd (hf : ∀ i ∈ u, DifferentiableWithinAt 𝕜 (f i) s x) :
    derivWithin (∏ i ∈ u, f i ·) s x =
      ∑ i ∈ u, (∏ j ∈ u.erase i, f j x) • derivWithin (f i) s x := by
  by_cases hsx : UniqueDiffWithinAt 𝕜 s x
  · exact (HasDerivWithinAt.fun_finsetProd fun i hi ↦ (hf i hi).hasDerivWithinAt).derivWithin hsx
  · simp [derivWithin_zero_of_not_uniqueDiffWithinAt hsx]

@[deprecated (since := "2026-04-08")]
alias derivWithin_fun_finset_prod := derivWithin_fun_finsetProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant9a5f4cda6bdba50954d27879160adfdb7d408b41c49dde6343cd03a30227b242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant9a5f4cda6bdba50954d27879160adfdb7d408b41c49dde6343cd03a30227b242.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72534c7d4bdd8a8810e4657edf16caadf16a2d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

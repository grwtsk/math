# tsupport_iterated_deriv_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ff2dd11-4a3d-3259-61dc-dfb3a0e2f570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:604d2ec9-7766-7218-be85-ea49cbb75f4f",
  "kind": "theorem",
  "lexical_name": "tsupport_iterated_deriv_subset",
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
  "slug": "tsupport-iterated-deriv-subset--36f8ace2e069f8f2549b59a0",
  "source": {
    "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f8ace2e069f8f2549b59a0414b8fc48c204b63d484bf9680caaa2319155b1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:604d2ec9-7766-7218-be85-ea49cbb75f4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsupport_iterated_deriv_subset (f : ℝ → ℝ) (k : ℕ) :
    tsupport (iteratedDeriv k f) ⊆ tsupport f := by
  induction k with
  | zero => simp only [iteratedDeriv_zero, subset_refl]
  | succ k ih =>
    rw [iteratedDeriv_succ]
    exact tsupport_deriv_subset.trans ih

/-- Outside the source support every ordinary jet vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

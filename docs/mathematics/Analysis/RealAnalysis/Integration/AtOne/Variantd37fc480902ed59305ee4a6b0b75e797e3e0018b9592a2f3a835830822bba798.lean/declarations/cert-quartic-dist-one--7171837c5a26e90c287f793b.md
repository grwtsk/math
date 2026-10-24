# cert_quartic_dist_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6db8fb465fa0825bd9faecbe00918f00c3fd95d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44bc3ece-f5d3-21ad-bbb4-60e8103e4602",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23d8ae2c-cc16-04f9-ecb5-161ba3368c25",
  "kind": "theorem",
  "lexical_name": "cert_quartic_dist_one",
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
  "slug": "cert-quartic-dist-one--7171837c5a26e90c287f793b",
  "source": {
    "blob": "6db8fb465fa0825bd9faecbe00918f00c3fd95d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7171837c5a26e90c287f793bbe9454f44c4adfe2dc34b0d6c1d2a521f8ba6d35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d8ae2c-cc16-04f9-ecb5-161ba3368c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cert_quartic_dist_one : (0.93432008 : ℝ) ≤ 3 / 2 - kappaXi 1 vQuartic / 2 := by
  have h := kappaXi_one_vQuartic_le; unfold kap9Quartic eps9 at h; norm_num at h ⊢; linarith

/-- strict forms at the FIVE-decimal interface constants (used with continuity in λ to produce
CertFlat / CertQuartic of Statement.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db8fb465fa0825bd9faecbe00918f00c3fd95d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

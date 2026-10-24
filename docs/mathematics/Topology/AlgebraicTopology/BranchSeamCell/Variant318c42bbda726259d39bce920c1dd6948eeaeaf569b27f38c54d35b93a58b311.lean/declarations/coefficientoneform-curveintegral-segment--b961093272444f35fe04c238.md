# coefficientOneForm_curveIntegral_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2b5e986f78c865cea11b45842e8aab2f2bc8ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c36bde76-2702-739c-5959-7c2ac7b443aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a41051-79d4-219a-ddcc-899be6f4c87d",
  "kind": "theorem",
  "lexical_name": "coefficientOneForm_curveIntegral_segment",
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
  "slug": "coefficientoneform-curveintegral-segment--b961093272444f35fe04c238",
  "source": {
    "blob": "db2b5e986f78c865cea11b45842e8aab2f2bc8ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b961093272444f35fe04c238e500d362cce7ba6ad38ef560ec972845e38d37da",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a41051-79d4-219a-ddcc-899be6f4c87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientOneForm_curveIntegral_segment (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (coefficientOneForm f) (.segment a b) =
      ∫ u : ℝ in 0..1, f (AffineMap.lineMap a b u) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro u _
  simp [coefficientOneForm, mul_comm]

/-- A seam traversed once in each direction contributes zero.  This is the
orientation identity used after a concrete seam path has been constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2b5e986f78c865cea11b45842e8aab2f2bc8ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

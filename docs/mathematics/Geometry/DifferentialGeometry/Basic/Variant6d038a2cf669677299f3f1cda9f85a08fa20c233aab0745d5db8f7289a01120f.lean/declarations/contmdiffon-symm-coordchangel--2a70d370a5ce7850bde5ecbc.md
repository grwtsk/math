# contMDiffOn_symm_coordChangeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d148b99c-85dd-2223-02da-8e6e34bebd02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff74f8dd-ad19-1fc8-81b8-7dc3cb754f1e",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_symm_coordChangeL",
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
  "slug": "contmdiffon-symm-coordchangel--2a70d370a5ce7850bde5ecbc",
  "source": {
    "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 311,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a70d370a5ce7850bde5ecbc23c34c8d4e9fc3c7ada9d212a1aed39813fa32c5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff74f8dd-ad19-1fc8-81b8-7dc3cb754f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_symm_coordChangeL :
    ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun b : B => ((e.coordChangeL 𝕜 e' b).symm : F →L[𝕜] F))
      (e.baseSet ∩ e'.baseSet) := by
  rw [inter_comm]
  refine (ContMDiffVectorBundle.contMDiffOn_coordChangeL e' e).congr fun b hb ↦ ?_
  rw [e.symm_coordChangeL e' hb]

@[deprecated (since := "2024-11-21")] alias smoothOn_coordChangeL := contMDiffOn_coordChangeL
@[deprecated (since := "2024-11-21")]
alias smoothOn_symm_coordChangeL := contMDiffOn_symm_coordChangeL


variable {e e'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07b763caa8b753341a002288853ff79a8652d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

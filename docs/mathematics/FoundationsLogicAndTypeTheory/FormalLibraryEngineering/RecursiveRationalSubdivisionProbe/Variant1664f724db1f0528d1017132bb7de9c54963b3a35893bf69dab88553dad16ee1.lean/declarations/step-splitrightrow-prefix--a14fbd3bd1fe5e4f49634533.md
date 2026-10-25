# step_splitRightRow_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f2b22da-5470-5cc7-b74a-c66f78c6420d",
  "kind": "lemma",
  "lexical_name": "step_splitRightRow_prefix",
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
  "slug": "step-splitrightrow-prefix--a14fbd3bd1fe5e4f49634533",
  "source": {
    "blob": "cd4f9172b9af1b9b93cd00002415ec2e848de599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a14fbd3bd1fe5e4f49634533b004ebba05f1a7faf86c9e1f9e181cb4e37aa46a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f2b22da-5470-5cc7-b74a-c66f78c6420d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma step_splitRightRow_prefix (n i : ℕ) (hi : i ≤ n)
    (t u : ℝ) (p : ControlRow M) :
    step t (splitRightRow (n + 1) p u) i =
      splitRightRow n (step (u + (1 - u) * t) p) u i := by
  simp only [step, splitRightRow]
  have hsub1 : n + 1 - i = (n - i) + 1 := by omega
  have hsub2 : n + 1 - (i + 1) = n - i := by omega
  rw [hsub1, hsub2]
  rw [show deCasteljau ((n - i) + 1) (fun j => p (i + j)) u =
      deCasteljau (n - i) (step u (fun j => p (i + j))) u by rfl]
  rw [← deCasteljau_rowCombo]
  apply deCasteljau_congr_prefix
  intro j hj
  simp only [rowCombo, step]
  have hidx : i + 1 + j = i + j + 1 := by omega
  rw [hidx]
  module

/-- Exact right subdivision identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4f9172b9af1b9b93cd00002415ec2e848de599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

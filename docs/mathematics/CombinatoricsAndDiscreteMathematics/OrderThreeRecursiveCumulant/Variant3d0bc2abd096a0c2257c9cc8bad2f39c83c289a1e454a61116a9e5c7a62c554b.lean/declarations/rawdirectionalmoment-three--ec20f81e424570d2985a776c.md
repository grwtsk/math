# rawDirectionalMoment_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6722d66-9eab-328d-cec9-f6fcda4e9c83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05d585bb-dedf-ebad-e81b-8a43f9ab19a4",
  "kind": "theorem",
  "lexical_name": "rawDirectionalMoment_three",
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
  "slug": "rawdirectionalmoment-three--ec20f81e424570d2985a776c",
  "source": {
    "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 337,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec20f81e424570d2985a776ce17b98c55a6101a4cb1c1b1fe5b49485cb4fa59f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d585bb-dedf-ebad-e81b-8a43f9ab19a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawDirectionalMoment_three
    (theta : E)
    (directions : Fin 3 → E) :
    F.rawDirectionalMoment theta 3 directions =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) *
          F.statistic i (directions 2) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_three, mul_assoc]

/-- The centered third cumulant expressed through raw moments and lower
cumulants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1afd3bf2ef95c7161c59f51540003cb21f30ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

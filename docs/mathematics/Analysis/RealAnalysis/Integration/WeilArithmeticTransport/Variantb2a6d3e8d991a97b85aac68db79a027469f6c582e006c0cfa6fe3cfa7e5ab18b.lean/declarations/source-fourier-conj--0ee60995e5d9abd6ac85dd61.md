# source_fourier_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:629e7af4-ad0b-059d-b28c-31ac370cb754",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccc15069-e6ca-2515-838f-bdb3fd2d03a7",
  "kind": "theorem",
  "lexical_name": "source_fourier_conj",
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
  "slug": "source-fourier-conj--0ee60995e5d9abd6ac85dd61",
  "source": {
    "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee60995e5d9abd6ac85dd612b1424e66110ed2ae77815f910524d86d4109719",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc15069-e6ca-2515-838f-bdb3fd2d03a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_fourier_conj
    (f : ℝ → ℝ) (he : Function.Even f) (ξ : ℝ) :
    conj (sourceFourier f ξ) = sourceFourier f ξ := by
  unfold sourceFourier
  rw [← integral_conj, ← integral_neg_eq_self]
  apply integral_congr_ae
  exact Eventually.of_forall fun x ↦ by
    simp only [map_mul, map_neg, Complex.conj_ofReal, ← Complex.exp_conj,
      Complex.conj_I, Complex.ofReal_neg]
    rw [he]
    congr 1
    ring

/-- On the real Fourier axis, and only there, the source's ordinary square is
the true norm square used by the archimedean term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460ca494088df4b27c60cc992e636e2ab4e0c6d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# frameRowSpace_eq_of_columnMinor_proportional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9825adf0-b231-d2ea-369a-0721aeb12749",
  "kind": "theorem",
  "lexical_name": "frameRowSpace_eq_of_columnMinor_proportional",
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
  "slug": "framerowspace-eq-of-columnminor-proportional--2c3fadd33aadd83286cb85e0",
  "source": {
    "blob": "37a1b34085d659e2813b33f42480249da509c856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3fadd33aadd83286cb85e0644b95586e1574920b66a4a9d4bf0b5a046f5af2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9825adf0-b231-d2ea-369a-0721aeb12749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frameRowSpace_eq_of_columnMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k)
    (t : ℝ) (ht : t ≠ 0)
    (h : ∀ c : Fin k → Fin n, columnMinor B c = t * columnMinor A c) :
    frameRowSpace A = frameRowSpace B := by
  obtain ⟨c, hcA⟩ := exists_columnMinor_ne_zero_of_rank A hA
  have hcB : columnMinor B c ≠ 0 := by
    rw [h c]
    exact mul_ne_zero ht hcA
  apply (pivotNormalize_eq_iff_rowSpace A B c hcA hcB).mp
  exact pivotNormalize_eq_of_columnMinor_proportional A B c hcA hcB t ht h

/-- General projective Pluecker recognition for actual full-rank real matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a1b34085d659e2813b33f42480249da509c856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

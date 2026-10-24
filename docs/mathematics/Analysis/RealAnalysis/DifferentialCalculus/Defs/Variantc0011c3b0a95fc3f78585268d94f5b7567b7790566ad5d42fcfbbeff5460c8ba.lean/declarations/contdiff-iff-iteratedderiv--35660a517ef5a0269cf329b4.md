# contDiff_iff_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66fe7dd088c3064d4a3dcc63ddece73e55b7180e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b097231-93f8-0028-6003-4d134fcc0fac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaa8417d-e666-4864-75a5-cd03a63c70e9",
  "kind": "theorem",
  "lexical_name": "contDiff_iff_iteratedDeriv",
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
  "slug": "contdiff-iff-iteratedderiv--35660a517ef5a0269cf329b4",
  "source": {
    "blob": "66fe7dd088c3064d4a3dcc63ddece73e55b7180e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 244,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35660a517ef5a0269cf329b43df632de520ef3e4dcd969d45335a9567084d132",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa8417d-e666-4864-75a5-cd03a63c70e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiff_iff_iteratedDeriv {n : ℕ∞} : ContDiff 𝕜 n f ↔
    (∀ m : ℕ, (m : ℕ∞) ≤ n → Continuous (iteratedDeriv m f)) ∧
      ∀ m : ℕ, (m : ℕ∞) < n → Differentiable 𝕜 (iteratedDeriv m f) := by
  simp only [contDiff_iff_continuous_differentiable, iteratedFDeriv_eq_equiv_comp,
    LinearIsometryEquiv.comp_continuous_iff, LinearIsometryEquiv.comp_differentiable_iff]

/-- The property of being `C^n`, initially defined in terms of the Fréchet derivative, can be
reformulated in terms of the one-dimensional derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66fe7dd088c3064d4a3dcc63ddece73e55b7180e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

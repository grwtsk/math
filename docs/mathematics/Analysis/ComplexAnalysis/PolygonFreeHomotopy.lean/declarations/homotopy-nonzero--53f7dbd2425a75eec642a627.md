# homotopy_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01c2d9ab-231d-12c8-f477-b0a6effa7545",
  "kind": "theorem",
  "lexical_name": "homotopy_nonzero",
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
  "slug": "homotopy-nonzero--53f7dbd2425a75eec642a627",
  "source": {
    "blob": "4c73870f61b52899371703ac07a3d1f7538106de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53f7dbd2425a75eec642a6273875f537299d4c09b8ed91ad480afa2ad5e36a76",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c2d9ab-231d-12c8-f477-b0a6effa7545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopy_nonzero (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (hz : CellNonzero F n a b) (lam t : I) :
    homotopy F hF n a b (lam, t) ≠ 0 := by
  rcases value_cases (vertexMotion F a b) n
      (fun i _ => deformationCell F hF a b i) t lam with h | ⟨i, hi, u, h⟩
  · change homotopy F hF n a b (lam, t) = vertexMotion F a b 0 lam at h
    rw [h]
    simpa [vertexMotion] using hz 0 hn (0 : I) lam
  · change homotopy F hF n a b (lam, t) =
      deformation F (a i) (a (i + 1)) (b i) (b (i + 1)) (u : ℝ) (lam : ℝ) at h
    rw [h]
    exact hz i hi u lam

/-- The existing Mathlib HomotopyWith type records closedness and nonvanishing
throughout the entire two-parameter deformation. It is not HomotopyRel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c73870f61b52899371703ac07a3d1f7538106de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

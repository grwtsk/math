# event_defect_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:525e8109-75c8-f9c1-3736-6d6aea159c70",
  "kind": "theorem",
  "lexical_name": "event_defect_covariance",
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
  "slug": "event-defect-covariance--cc1191d6fb7d183467e1f204",
  "source": {
    "blob": "71747ff93ce975cc1624adcbab5b3dc0da5d54de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1191d6fb7d183467e1f20461cbb545d6eb95a677e04ca552d45411f3ea56d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525e8109-75c8-f9c1-3736-6d6aea159c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem event_defect_covariance (L Pminus : Matrix n n ℂ) (Pplus : Matrix m m ℂ)
    (M : Matrix m n ℂ) (Tplus Kplus : Matrix m m ℂ) (Kminus : Matrix n n ℂ)
    (hplus : Kplus * Tplus = 1) :
    Kminusᴴ * L * Kminus + (Tplus * M * Kminus)ᴴ *
      (Kplusᴴ * Pplus * Kplus) * (Tplus * M * Kminus) -
      Kminusᴴ * Pminus * Kminus =
        Kminusᴴ * (L + Mᴴ * Pplus * M - Pminus) * Kminus := by
  have hstar : Tplusᴴ * Kplusᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hplus, Matrix.conjTranspose_one]
  simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tplusᴴ Kplusᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc Kplus Tplus, hplus, Matrix.one_mul]
  simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_sub, Matrix.sub_mul,
    Matrix.mul_assoc]

end ChartCovariance

/-- Simultaneous additive resets retain cross terms between distinct impulses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71747ff93ce975cc1624adcbab5b3dc0da5d54de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

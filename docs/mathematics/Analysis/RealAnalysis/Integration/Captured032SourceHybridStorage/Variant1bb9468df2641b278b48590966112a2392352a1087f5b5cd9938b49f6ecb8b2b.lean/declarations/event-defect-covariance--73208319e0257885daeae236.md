# event_defect_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dc02c4b-1677-d38a-1905-ba3a4a2ee2e8",
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
  "slug": "event-defect-covariance--73208319e0257885daeae236",
  "source": {
    "blob": "87ec638aaaed97988b3ed96754e7d2e247e3826c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73208319e0257885daeae236614d87e304a6e166b0f19cb134765ffb123b652b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc02c4b-1677-d38a-1905-ba3a4a2ee2e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–171.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ec638aaaed97988b3ed96754e7d2e247e3826c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# PrimitiveAdditiveTriple.freyFractionModel_good

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d2a32e9-33b5-679d-0c54-61a71628a5e3",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyFractionModel_good",
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
  "slug": "primitiveadditivetriple-freyfractionmodel-good--a14f83366861692b036a368d",
  "source": {
    "blob": "7817aa4f3c54605b05e5da40d67daa3cc71c8129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a14f83366861692b036a368da33f1a52979782ba274fc035c99661849c5e93fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d2a32e9-33b5-679d-0c54-61a71628a5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyFractionModel_good
    (hp2 : p ≠ 2) (hd : ¬ p ∣ t.a * t.b * t.c) :
    WeierstrassCurve.HasGoodReduction R (t.freyFractionModel R K) := by
  apply FreyDVR.good_of_residue_delta
  let f : ZMod p →+* IsLocalRing.ResidueField R := ZMod.castHom (dvd_refl p) _
  have heq : IsLocalRing.residue R (t.freyModelOver R).Δ =
      f ((t.freyResidueModel p).Δ) := by
    simpa only [WeierstrassCurve.map_Δ] using
      congrArg WeierstrassCurve.Δ (t.freyDVR_residue_comparison R p)
  rw [heq]
  intro hz
  have h0 : (t.freyResidueModel p).Δ = 0 := f.injective (by simpa using hz)
  rcases (t.freyResidueModel_delta_zero_iff p).mp h0 with h2 | hdiv
  · exact hp2 h2
  · exact hd hdiv

/-- At every odd residue prime dividing abc, the SAME equation has actual
multiplicative reduction. No conductor API theorem is used or claimed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7817aa4f3c54605b05e5da40d67daa3cc71c8129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

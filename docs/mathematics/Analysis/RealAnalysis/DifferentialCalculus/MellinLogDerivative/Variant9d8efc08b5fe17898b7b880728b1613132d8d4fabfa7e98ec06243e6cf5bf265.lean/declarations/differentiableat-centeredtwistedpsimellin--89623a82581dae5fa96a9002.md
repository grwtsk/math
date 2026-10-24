# differentiableAt_centeredTwistedPsiMellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:887194c2-16bf-551b-fd24-4edcb036966c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b32776a6-691d-c4c1-3530-b941d3e421c1",
  "kind": "theorem",
  "lexical_name": "differentiableAt_centeredTwistedPsiMellin",
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
  "slug": "differentiableat-centeredtwistedpsimellin--89623a82581dae5fa96a9002",
  "source": {
    "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89623a82581dae5fa96a9002e57eabe87076afb19134c9ab7926c52a7695115b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b32776a6-691d-c4c1-3530-b941d3e421c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_centeredTwistedPsiMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) :
    DifferentiableAt ℂ (centeredTwistedPsiMellin χ) s := by
  let r : ℝ := ((1 / 2 : ℝ) + s.re) / 2
  have hhalfr : (1 / 2 : ℝ) < r := by
    dsimp [r]
    linarith
  have hrs : r < s.re := by
    dsimp [r]
    linarith
  have htop : centeredTwistedPsiStep χ =O[atTop]
      (fun t : ℝ ↦ t ^ (-(-r))) := by
    simpa using centeredTwistedPsiStep_isBigO_rpow χ hBound hhalfr
  let b : ℝ := (-s).re - 1
  have hbot : centeredTwistedPsiStep χ =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) :=
    centeredTwistedPsiStep_isBigO_zero_rpow χ b
  have hmellin : DifferentiableAt ℂ
      (mellin (centeredTwistedPsiStep χ)) (-s) := by
    apply mellin_differentiableAt_of_isBigO_rpow
      (centeredTwistedPsiStep_locallyIntegrable χ) htop
    · simpa using hrs
    · exact hbot
    · dsimp [b]
      linarith
  unfold centeredTwistedPsiMellin
  exact differentiableAt_id.mul (hmellin.comp s (by fun_prop))

/-- Global half-plane form of `differentiableAt_centeredTwistedPsiMellin`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

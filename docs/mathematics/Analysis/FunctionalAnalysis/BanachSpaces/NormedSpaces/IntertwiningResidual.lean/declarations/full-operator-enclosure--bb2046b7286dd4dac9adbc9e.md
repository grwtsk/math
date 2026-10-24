# full_operator_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f93a4498-f3ae-ef7b-c934-1423de324e91",
  "kind": "theorem",
  "lexical_name": "full_operator_enclosure",
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
  "slug": "full-operator-enclosure--bb2046b7286dd4dac9adbc9e",
  "source": {
    "blob": "aeaf0e89be3d900a4e6a7345cc1058879c63c599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 91,
    "path": "GRWTSK/Analysis/NormedSpace/IntertwiningResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2046b7286dd4dac9adbc9eb3e5db80cf4e73e28da56a67cfe864cfcc109e6c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f93a4498-f3ae-ef7b-c934-1423de324e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_operator_enclosure (b : E) (bh : F) (x : V) (y : W)
    {s eta_b eta_D : ℝ} (hs : 0 < s)
    (hb : 0 ≤ eta_b) (hD : 0 ≤ eta_D)
    (hsym : SymmetricOnDomain A) (hcoerc : CoerciveAt A s)
    (hsolve : A x=b)
    (hsource : ‖b-J.isometry bh‖ ≤ eta_b)
    (hdefect : ‖defect J A Ah y‖ ≤ eta_D*‖(y : F)‖) :
    let eta := 2*eta_b*‖(y : F)‖+eta_D*‖(y : F)‖^2
    let R := eta_b+‖bh-Ah y‖+eta_D*‖(y : F)‖
    lowerReading Ah bh y-eta ≤ ⟪b,(x : E)⟫_ℝ ∧
    ⟪b,(x : E)⟫_ℝ ≤ lowerReading Ah bh y+eta+R^2/s := by
  dsimp only
  obtain ⟨hlo,hhi⟩ := positive_height_enclosure A b x (J.lift y) hs hsym hcoerc hsolve
  apply GRWTSK.Analysis.Inequalities.ResidualEnclosure.perturb_enclosure hs
    (by positivity) (norm_nonneg _) hlo hhi
  · exact reading_difference_bound J A Ah b bh y hb hD hsource hdefect
  · exact full_residual_bound J A Ah b bh y hsource hdefect

end GRWTSK.Analysis.NormedSpace.IntertwiningResidual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NormedSpace/IntertwiningResidual.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeaf0e89be3d900a4e6a7345cc1058879c63c599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

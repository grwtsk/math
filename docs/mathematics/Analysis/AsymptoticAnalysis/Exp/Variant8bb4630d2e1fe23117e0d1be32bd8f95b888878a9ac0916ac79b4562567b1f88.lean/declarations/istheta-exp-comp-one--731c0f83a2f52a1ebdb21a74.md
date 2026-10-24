# isTheta_exp_comp_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87fbe597-0a47-efca-8ae1-16db90377bc5",
  "kind": "theorem",
  "lexical_name": "isTheta_exp_comp_one",
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
  "slug": "istheta-exp-comp-one--731c0f83a2f52a1ebdb21a74",
  "source": {
    "blob": "1174a9a77a4eff10de99c2c2b5ff44e52c4a78a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 421,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:731c0f83a2f52a1ebdb21a746ab175508569b0e881f1b94f9d921e2411432a7c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87fbe597-0a47-efca-8ae1-16db90377bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTheta_exp_comp_one {f : α → ℝ} :
    (fun x => exp (f x)) =Θ[l] (fun _ => 1 : α → ℝ) ↔ IsBoundedUnder (· ≤ ·) l fun x => |f x| := by
  simp only [← exp_zero, isTheta_exp_comp_exp_comp, sub_zero]
set_option linter.uppercaseLean3 false in
#align real.is_Theta_exp_comp_one Real.isTheta_exp_comp_one

end Real

namespace Complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1174a9a77a4eff10de99c2c2b5ff44e52c4a78a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

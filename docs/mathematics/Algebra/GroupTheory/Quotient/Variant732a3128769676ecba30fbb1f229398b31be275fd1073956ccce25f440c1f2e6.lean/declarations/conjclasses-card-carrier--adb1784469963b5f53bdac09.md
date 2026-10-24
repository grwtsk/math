# ConjClasses.card_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ca98a50-b3ab-d786-abc4-585b28af324f",
  "kind": "theorem",
  "lexical_name": "ConjClasses.card_carrier",
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
  "slug": "conjclasses-card-carrier--adb1784469963b5f53bdac09",
  "source": {
    "blob": "556fb811522073293ead7bcecbe15636be2f71f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 363,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb1784469963b5f53bdac090a004de66a4f5b3af760227cad7b743c162b534d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ca98a50-b3ab-d786-abc4-585b28af324f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConjClasses.card_carrier [Group G] [Fintype G] (g : G) [Fintype (ConjClasses.mk g).carrier]
    [Fintype <| MulAction.stabilizer (ConjAct G) g] : Fintype.card (ConjClasses.mk g).carrier =
      Fintype.card G / Fintype.card (MulAction.stabilizer (ConjAct G) g) := by
  classical
  rw [Fintype.card_congr <| ConjAct.toConjAct (G := G) |>.toEquiv]
  rw [←MulAction.card_orbit_mul_card_stabilizer_eq_card_group (ConjAct G) g, Nat.mul_div_cancel]
  simp_rw [ConjAct.orbit_eq_carrier_conjClasses]
  exact Fintype.card_pos_iff.mpr inferInstance

namespace Subgroup

variable {G : Type*} [Group G] (H : Subgroup G)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556fb811522073293ead7bcecbe15636be2f71f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

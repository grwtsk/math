# gamma_preorder_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f939c5-ea90-662a-28ea-f831f1b5b2a1",
  "kind": "theorem",
  "lexical_name": "gamma_preorder_trans",
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
  "slug": "gamma-preorder-trans--0c8c2704a893e9ad45fedbd3",
  "source": {
    "blob": "aa3d9e8d306e9ac82e10631af6b2e685b457fba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 459,
    "path": "GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c8c2704a893e9ad45fedbd3b552a6ef93cb64b86b723dd7d649a7da2bf58d8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f939c5-ea90-662a-28ea-f831f1b5b2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_preorder_trans {Γ₁ Γ₂ Γ₃ : Gamma} :
    Γ₁ ≤ Γ₂ -> Γ₂ ≤ Γ₃ -> Γ₁ ≤ Γ₃ := by
  intro h12 h23
  rcases h12 with ⟨hf12, hlevel12, hdepth12, hclosure12, hsimple12, hseries12,
    hevo12, hm12, hp12, hmeas12, hfrac12, hana12, hzeta12, hflow12, hbij12,
    hframe12, hchain12, hhom12, hstab12, hcurv12, hsurg12, hext12, htop12, hmod12⟩
  rcases h23 with ⟨hf23, hlevel23, hdepth23, hclosure23, hsimple23, hseries23,
    hevo23, hm23, hp23, hmeas23, hfrac23, hana23, hzeta23, hflow23, hbij23,
    hframe23, hchain23, hhom23, hstab23, hcurv23, hsurg23, hext23, htop23, hmod23⟩
  exact ⟨LogicalFoundation.foundation_trans hf12 hf23,
    Nat.le_trans hlevel12 hlevel23, Nat.le_trans hdepth12 hdepth23,
    Nat.le_trans hclosure12 hclosure23, Nat.le_trans hsimple12 hsimple23,
    Nat.le_trans hseries12 hseries23, Nat.le_trans hevo12 hevo23,
    flag_trans hm12 hm23, flag_trans hp12 hp23, flag_trans hmeas12 hmeas23,
    flag_trans hfrac12 hfrac23, flag_trans hana12 hana23,
    flag_trans hzeta12 hzeta23, flag_trans hflow12 hflow23,
    flag_trans hbij12 hbij23, flag_trans hframe12 hframe23,
    flag_trans hchain12 hchain23, flag_trans hhom12 hhom23,
    flag_trans hstab12 hstab23, flag_trans hcurv12 hcurv23,
    flag_trans hsurg12 hsurg23, flag_trans hext12 hext23,
    flag_trans htop12 htop23, flag_trans hmod12 hmod23⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3d9e8d306e9ac82e10631af6b2e685b457fba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

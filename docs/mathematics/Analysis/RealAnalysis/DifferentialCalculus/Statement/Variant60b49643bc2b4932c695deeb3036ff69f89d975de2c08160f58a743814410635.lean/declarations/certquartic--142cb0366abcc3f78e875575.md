# CertQuartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea7d37972b8aefdad5460c2556b94c2b06654a5084e56cc9d3ae7ca445489a88",
  "kind": "def",
  "lexical_name": "CertQuartic",
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
  "slug": "certquartic--142cb0366abcc3f78e875575",
  "source": {
    "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142cb0366abcc3f78e875575d92364bb39ee16b69bf3c8de1315af3b9f85893a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea7d37972b8aefdad5460c2556b94c2b06654a5084e56cc9d3ae7ca445489a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CertQuartic : Prop :=
  ∃ lam : ℝ, 1 / 2 ≤ lam ∧ lam < 1 ∧
    (0.86864 : ℝ) < 2 - kappaXi lam vQuartic ∧ (0.93432 : ℝ) < 3 / 2 - kappaXi lam vQuartic / 2

/-! ## §5. The headline sentences for ξ′  [XF′ Thm 8.2]

Assembly route (XiPrime/Assembly.lean): for Z := xiDerivZeros hF2 hs, v admissible, λ ∈ (0,1):
XiEF Z Pf ∧ XiTraceTransfer Z Pf xiCoeffFamily ∧ CoeffMoments Z Pf xiCoeffFamily κ ⟹ GzMoments Z Pf κ'
for every κ' > κ ⟹ (zero side: the tree's TailInputs/BlockInputs for Pf T at height T, generic in Z and in
the Params value, + Zeta23.Assembly.count_certificate (c = 2) / count_certificate_c3 (c = 3), verbatim)
⟹ FixedLamBounds; then CertFlat/CertQuartic give the ε-free decimals.  The λ → 1⁻ "limit form" with
κ₁(1, v) needs only continuity of λ ↦ κ₁(λ,v) on (0,1] ([XF′ Remark 7.2]) and is stated separately. -/

/-- [XF′ Thm 8.2] at fixed λ ∈ (0,1) and window v:  for every ε > 0 and all large T,
(2 − κ₁(λ,v) − ε)·N_{ξ′}(T,2T) ≤ N⁰ˢ_{ξ′}(T,2T)   and   (3/2 − κ₁(λ,v)/2 − ε)·N_{ξ′}(T,2T) ≤ N_{d,ξ′}(T,2T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ea6529763ece5155f34750beea02c85c5f784c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

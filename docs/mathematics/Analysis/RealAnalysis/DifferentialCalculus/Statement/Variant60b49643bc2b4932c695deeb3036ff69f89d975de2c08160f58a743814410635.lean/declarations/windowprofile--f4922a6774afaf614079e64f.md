# WindowProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:286675b46a688cf70aa4da8979cf2c4f6b0637936d8110286fc09df2f8e8efbc",
  "kind": "structure",
  "lexical_name": "WindowProfile",
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
  "slug": "windowprofile--f4922a6774afaf614079e64f",
  "source": {
    "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4922a6774afaf614079e64f95e055d48733296458f3ce3081ccc8104a90495a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:286675b46a688cf70aa4da8979cf2c4f6b0637936d8110286fc09df2f8e8efbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WindowProfile (v : ℝ → ℝ) : Prop where
  even : ∀ s : ℝ, v (-s) = v s
  contDiff : ContDiff ℝ 3 v
  pos : ∀ s ∈ Icc (-(1/2 : ℝ)) (1/2), 0 < v s
  le_one : ∀ s : ℝ, v s ≤ 1

/-- **CertFlat — the certified constant, flat window**  [XF′ Thm 8.2 "Certified constants":
1/c ≤ 100905635384/88388425125 + ε₉ ≤ 1.1416163 at λ = 1, so 2 − 1/c ≥ 0.8583837, 3/2 − 1/(2c) ≥ 0.9291918]
(proved in Certificate.lean).  Stated in the exact form the ε-free headline consumes: SOME
λ ∈ [1/2, 1) at which the fixed-λ bounds already beat the decimals STRICTLY (proof: exact rational value of
κ with D1trunc K, K ≥ 9, at λ = 1; D₁ ≤ D1trunc K + ε_K on [0,1] on the correct side; strict at λ = 1; then
continuity of λ ↦ κ₁(λ,v) on [1/2,1]).  κ₁ here is Defs.kappaXi with the FULL series D₁.  DECIMALS: the
interface carries FIVE (leaving ≥ 10⁻⁶ slack so that no certificate route can miss the stated Prop by 10⁻⁷);
the sharp six/seven-digit rational bounds are proved as separately named theorems anyone may quote. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ea6529763ece5155f34750beea02c85c5f784c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

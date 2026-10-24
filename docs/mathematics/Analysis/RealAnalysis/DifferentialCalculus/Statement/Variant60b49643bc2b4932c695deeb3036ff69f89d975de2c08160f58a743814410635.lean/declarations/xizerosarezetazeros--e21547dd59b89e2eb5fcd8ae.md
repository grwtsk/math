# XiZerosAreZetaZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3d47ffe5d201fb972b9ecb881aee11370e7e416ade22c422c0d02e30bfb8ed5",
  "kind": "def",
  "lexical_name": "XiZerosAreZetaZeros",
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
  "slug": "xizerosarezetazeros--e21547dd59b89e2eb5fcd8ae",
  "source": {
    "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e21547dd59b89e2eb5fcd8ae1491ceaeccfc07ae235523747cb5ce910b82bfb6",
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

Occurrence: `declaration:c3d47ffe5d201fb972b9ecb881aee11370e7e416ade22c422c0d02e30bfb8ed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def XiZerosAreZetaZeros : Prop :=
  ∀ s : ℂ, 0 < s.re → s.re < 1 → (xi s = 0 ↔ riemannZeta s = 0)

/-! ## §2. The zeros of ξ′ as an abstract ZeroConfig  [XF′ (F1)–(F3)] -/

/-- **(F2)** [XF′ §1]: "all zeros of ξ′ lie in 0 < Re s < 1" (Re ξ′/ξ(s) = Σ_ρ Re 1/(s−ρ) > 0 for Re s ≥ 1
by the Hadamard product for ξ, all of whose zeros have 0 < β < 1; then ξ′(1−s) = −ξ′(s)).  Source: Conrey,
J. Number Theory 16 (1983) §2; Levinson–Montgomery, Acta Math. 133 (1974).  Proved in this tree:
theorem xiDerivZerosInStrip_holds (XiPrime/ExplicitFormula/ZeroFree.lean, from Re ξ′/ξ > 0 on Re s ≥ 1).  Consumed by: ZeroConfig.strip
(hence prop:tail's X^{1/2} and W-summability) and by XiEF (every zero inside the contour
[1−σ₁, σ₁] × [−tₙ, tₙ] of [XF′ Prop 4.1] is a member of the configuration). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ea6529763ece5155f34750beea02c85c5f784c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

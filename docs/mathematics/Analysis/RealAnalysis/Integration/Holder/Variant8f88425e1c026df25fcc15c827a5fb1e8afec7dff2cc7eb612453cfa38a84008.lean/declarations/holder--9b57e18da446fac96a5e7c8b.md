# holderₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef2f666c1f06302f8c398b9a4ab4e376c2f795af26f775baa6e43f452231356b",
  "kind": "def",
  "lexical_name": "holderₗ",
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
  "slug": "holder--9b57e18da446fac96a5e7c8b",
  "source": {
    "blob": "bd7605e9e6ed338773f1f5cc842964d98518ce8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b57e18da446fac96a5e7c8b5f0670e15077da14a7f317f69a2d1b55855fea5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef2f666c1f06302f8c398b9a4ab4e376c2f795af26f775baa6e43f452231356b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def holderₗ : Lp E p μ →ₗ[𝕜] Lp F q μ →ₗ[𝕜] Lp G r μ :=
  .mk₂ 𝕜 (B.holder r) B.holder_add_left B.holder_smul_left
    B.holder_add_right B.holder_smul_right

variable [Fact (1 ≤ p)] [Fact (1 ≤ q)] [Fact (1 ≤ r)]

variable (μ p q r) in
/-- `MeasureTheory.Lp.holder` as a continuous bilinear map. -/
@[simps! apply_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7605e9e6ed338773f1f5cc842964d98518ce8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

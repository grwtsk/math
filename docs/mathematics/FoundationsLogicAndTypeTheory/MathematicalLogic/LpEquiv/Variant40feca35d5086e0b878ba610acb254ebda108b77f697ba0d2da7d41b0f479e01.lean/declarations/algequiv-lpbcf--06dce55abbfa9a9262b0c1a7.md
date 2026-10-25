# AlgEquiv.lpBcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfb417ed3879ec3f14e60b43a89cd69e39d20d3a5539519f58b215a767b5c2ac",
  "kind": "def",
  "lexical_name": "AlgEquiv.lpBcf",
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
  "slug": "algequiv-lpbcf--06dce55abbfa9a9262b0c1a7",
  "source": {
    "blob": "22a5acb3d98d398c99a0825a673cc859e459b777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06dce55abbfa9a9262b0c1a7f5a4b3f752de8117704fcf8f1a9bd3b33bbeb7f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfb417ed3879ec3f14e60b43a89cd69e39d20d3a5539519f58b215a767b5c2ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def AlgEquiv.lpBcf : lp (fun _ : α => A) ∞ ≃ₐ[𝕜] α →ᵇ A :=
  { RingEquiv.lpBcf A with commutes' := fun _k => rfl }
#align alg_equiv.lp_bcf AlgEquiv.lpBcf

variable {α A 𝕜}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a5acb3d98d398c99a0825a673cc859e459b777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

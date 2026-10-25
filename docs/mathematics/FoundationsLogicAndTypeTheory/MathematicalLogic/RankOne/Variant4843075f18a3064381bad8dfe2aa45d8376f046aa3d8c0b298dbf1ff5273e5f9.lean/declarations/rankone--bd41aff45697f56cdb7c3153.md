# rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c9b671732c51a15c22de4ebe8c53ef77c0232f68ce353cd9b38ba1e6bb3f7a",
  "kind": "def",
  "lexical_name": "rankOne",
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
  "slug": "rankone--bd41aff45697f56cdb7c3153",
  "source": {
    "blob": "042124f35d3465e95890c6e641d11fc1ac8f9876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd41aff45697f56cdb7c31535baa3a0a456d65bc546dc84f016c4bd4b7e90c78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c9b671732c51a15c22de4ebe8c53ef77c0232f68ce353cd9b38ba1e6bb3f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rankOne {e : ℝ≥0} (he : 1 < e) : v.RankOne where
  hom' := (toNNReal (ne_of_gt (lt_trans zero_lt_one he))).comp
      (.ofClass (valueGroup₀_equiv_withZeroMulInt v))
  strictMono' := (toNNReal_strictMono he).comp (valueGroup₀_equiv_withZeroMulInt_strictMono v)
  exists_val_nontrivial := IsNontrivial.exists_val_nontrivial

end LinearOrderedCommGroupWithZero

section WithZeroMulInt

variable {v : Valuation R ℤᵐ⁰} [hv : v.IsRankOneDiscrete]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042124f35d3465e95890c6e641d11fc1ac8f9876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

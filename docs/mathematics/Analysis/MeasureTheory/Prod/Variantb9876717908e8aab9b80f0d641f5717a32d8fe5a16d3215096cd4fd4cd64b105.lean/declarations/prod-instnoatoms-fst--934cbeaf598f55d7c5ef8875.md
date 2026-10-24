# prod.instNoAtoms_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:926208353a60c4dbf052ecd088510fef1f9e011720a4f6667b90c211a1e711fb",
  "kind": "instance",
  "lexical_name": "prod.instNoAtoms_fst",
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
  "slug": "prod-instnoatoms-fst--934cbeaf598f55d7c5ef8875",
  "source": {
    "blob": "40e0faec880ca5ec0dc3cca09bef3e14d7b48234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 226,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:934cbeaf598f55d7c5ef887595b7ce6f155d4f48e535690010e1df238e21236c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:926208353a60c4dbf052ecd088510fef1f9e011720a4f6667b90c211a1e711fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance prod.instNoAtoms_fst [NoAtoms μ] :
    NoAtoms (Measure.prod μ ν) where
  measure_singleton
  | (x, y) => nonpos_iff_eq_zero.mp <| calc
    μ.prod ν {(x, y)} = μ.prod ν ({x} ×ˢ {y}) := by rw [singleton_prod_singleton]
    _ ≤ μ {x} * ν {y} := prod_prod_le _ _
    _ = 0 := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e0faec880ca5ec0dc3cca09bef3e14d7b48234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

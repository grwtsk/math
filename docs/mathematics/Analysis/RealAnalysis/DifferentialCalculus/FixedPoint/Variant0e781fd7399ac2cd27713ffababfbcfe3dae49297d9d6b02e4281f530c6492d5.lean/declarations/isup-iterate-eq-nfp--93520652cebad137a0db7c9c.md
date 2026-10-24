# iSup_iterate_eq_nfp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca62873-1946-1019-49e9-006fc43817af",
  "kind": "theorem",
  "lexical_name": "iSup_iterate_eq_nfp",
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
  "slug": "isup-iterate-eq-nfp--93520652cebad137a0db7c9c",
  "source": {
    "blob": "0c346a3ded4db390334527366b4a8814fb2fc3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 260,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93520652cebad137a0db7c9c3b462af8fbbd5e9a9fa3f6fcc34e5126640016d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca62873-1946-1019-49e9-006fc43817af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_iterate_eq_nfp (f : Ordinal.{u} → Ordinal.{u}) (a : Ordinal.{u}) :
    ⨆ n : ℕ, f^[n] a = nfp f a := by
  apply le_antisymm
  · rw [Ordinal.iSup_le_iff]
    intro n
    rw [← List.length_replicate (n := n) (a := Unit.unit), ← List.foldr_const f a]
    exact Ordinal.le_iSup _ _
  · apply Ordinal.iSup_le
    intro l
    rw [List.foldr_const f a l]
    exact Ordinal.le_iSup _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c346a3ded4db390334527366b4a8814fb2fc3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

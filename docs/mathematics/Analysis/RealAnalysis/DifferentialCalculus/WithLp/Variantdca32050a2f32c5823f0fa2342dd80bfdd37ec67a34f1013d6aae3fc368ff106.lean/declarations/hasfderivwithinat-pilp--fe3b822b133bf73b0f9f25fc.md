# hasFDerivWithinAt_piLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7571313-6228-0ca9-46e1-45fd5bf5911b",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_piLp",
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
  "slug": "hasfderivwithinat-pilp--fe3b822b133bf73b0f9f25fc",
  "source": {
    "blob": "d6c6f05da11b8e649505b4fb0c86da848b6a18a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3b822b133bf73b0f9f25fcaa1917d36e3db405436cf23d5c56f4158975ca6f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7571313-6228-0ca9-46e1-45fd5bf5911b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_piLp :
    HasFDerivWithinAt f f' t y ↔
      ∀ i, HasFDerivWithinAt (fun x => f x i) (PiLp.proj _ _ i ∘L f') t y := by
  rw [← (PiLp.continuousLinearEquiv p 𝕜 E).comp_hasFDerivWithinAt_iff, hasFDerivWithinAt_pi']
  rfl

namespace PiLp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c6f05da11b8e649505b4fb0c86da848b6a18a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

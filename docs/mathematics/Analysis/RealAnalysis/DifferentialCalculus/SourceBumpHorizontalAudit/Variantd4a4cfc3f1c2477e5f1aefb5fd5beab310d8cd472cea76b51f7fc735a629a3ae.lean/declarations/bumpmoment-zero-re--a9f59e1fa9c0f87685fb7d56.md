# bumpMoment_zero_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e232715b4b719d5bf81aca475e1c1b2cc1e043c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68c9f0a7-bc35-9ef7-0b7c-32bc5795d4af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9e6570f-aeba-55b2-c9a9-2935a23c0062",
  "kind": "theorem",
  "lexical_name": "bumpMoment_zero_re",
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
  "slug": "bumpmoment-zero-re--a9f59e1fa9c0f87685fb7d56",
  "source": {
    "blob": "e232715b4b719d5bf81aca475e1c1b2cc1e043c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9f59e1fa9c0f87685fb7d562870ed525324c848556a0e65406fdef027a2b8bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9e6570f-aeba-55b2-c9a9-2935a23c0062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_zero_re (z : ℂ) (hz : bumpMoment 0 z = 0) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z (radialMass z) (radialEnergy z)
    (radialMass_pos z) (radialEnergy_nonneg z) (radial_energy_identity z hz)

end
end SourceBumpGlobalScratch

/-! Horizontal source-bump modulus monotonicity from the full radial boundary energy. -/
set_option autoImplicit false
namespace SourceBumpHorizontalScratch
open MeasureTheory Set
open SourceBumpMomentsScratch SourceBumpGlobalScratch
noncomputable section

/-- Retaining the boundary term gives the radial energy identity for every complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e232715b4b719d5bf81aca475e1c1b2cc1e043c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ContinuousMap.iSup_comap_le_borel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37327ee5-9939-fc24-2489-dc676a968cd6",
  "kind": "lemma",
  "lexical_name": "ContinuousMap.iSup_comap_le_borel",
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
  "slug": "continuousmap-isup-comap-le-borel--e3c5eac8beac5c43d643442e",
  "source": {
    "blob": "2b36cdbce3e5b657cc1d21bc69956eace01bfe9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3c5eac8beac5c43d643442eeb1aa7d238afb8bde9eeb39d753345f5385f6f55",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37327ee5-9939-fc24-2489-dc676a968cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMap.iSup_comap_le_borel :
    ⨆ x : X, (borel Y).comap (fun f ↦ f x) ≤ borel C(X, Y) := by
  borelize Y
  simp_rw [iSup_le_iff, ← measurable_iff_comap_le]
  exact ContinuousMap.measurable_eval

variable [SecondCountableTopology X] [SecondCountableTopology Y]
  [LocallyCompactSpace X] [RegularSpace Y]

namespace ContinuousMap

/-- The sigma-algebra over `C(X, Y)` is the coarsest that makes the maps `f ↦ f x` measurable
for all `x : X`.

The proof follows the one presented on <https://math.stackexchange.com/questions/4789531/when-does-the-borel-sigma-algebra-of-compact-convergence-coincide-with-the-pr>. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b36cdbce3e5b657cc1d21bc69956eace01bfe9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

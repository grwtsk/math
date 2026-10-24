# hasFDerivWithinAt_congr_set'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2d8d9c24d5c267d02323df0ec84e4adcca2c07a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 772,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:636f298f-8efc-ce67-ee9b-824c3bbc4124",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42589b90-b6fa-4f32-6975-5260c98f6421",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_congr_set'",
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
  "slug": "hasfderivwithinat-congr-set--c97f097839961489644bb212",
  "source": {
    "blob": "f2d8d9c24d5c267d02323df0ec84e4adcca2c07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 772,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c97f097839961489644bb2120ffe07b0ce8bb22aa1a8ae0c07fd885c801f8434",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42589b90-b6fa-4f32-6975-5260c98f6421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_congr_set' (y : E) (h : s =ᶠ[𝓝[{y}ᶜ] x] t) :
    HasFDerivWithinAt f f' s x ↔ HasFDerivWithinAt f f' t x :=
  calc
    HasFDerivWithinAt f f' s x ↔ HasFDerivWithinAt f f' (s \ {y}) x :=
      (hasFDerivWithinAt_diff_singleton _).symm
    _ ↔ HasFDerivWithinAt f f' (t \ {y}) x := by
      suffices 𝓝[s \ {y}] x = 𝓝[t \ {y}] x by simp only [HasFDerivWithinAt, this]
      simpa only [set_eventuallyEq_iff_inf_principal, ← nhdsWithin_inter', diff_eq,
        inter_comm] using h
    _ ↔ HasFDerivWithinAt f f' t x := hasFDerivWithinAt_diff_singleton _
#align has_fderiv_within_at_congr_set' hasFDerivWithinAt_congr_set'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d8d9c24d5c267d02323df0ec84e4adcca2c07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

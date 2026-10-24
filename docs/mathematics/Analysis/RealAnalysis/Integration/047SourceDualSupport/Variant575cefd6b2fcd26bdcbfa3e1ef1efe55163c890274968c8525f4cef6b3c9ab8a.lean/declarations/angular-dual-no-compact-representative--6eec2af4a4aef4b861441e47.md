# angular_dual_no_compact_representative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceb06703-582a-737f-9574-e565e88e3574",
  "kind": "theorem",
  "lexical_name": "angular_dual_no_compact_representative",
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
  "slug": "angular-dual-no-compact-representative--6eec2af4a4aef4b861441e47",
  "source": {
    "blob": "6fb2756278e66b14dded86c693de3fd1d5b90904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eec2af4a4aef4b861441e47f592a339bd777cce9cc1bc135bc0c77ad3c0ae99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceb06703-582a-737f-9574-e565e88e3574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_dual_no_compact_representative (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ ∃ g : ℝ → ℂ, HasCompactSupport g ∧
      (angularSignDuality f : ℝ → ℂ) =ᵐ[volume] g := by
  rintro ⟨g, hg, he⟩
  apply angular_dual_not_integrable A hA f hf
  exact (integrable_of_memLp_two_compact
    ((memLp_congr_ae he).mp (Lp.memLp (angularSignDuality f))) hg).congr he.symm
end FormalResearch.RiemannHypothesis.SourceDualSupport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variant575cefd6b2fcd26bdcbfa3e1ef1efe55163c890274968c8525f4cef6b3c9ab8a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb2756278e66b14dded86c693de3fd1d5b90904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

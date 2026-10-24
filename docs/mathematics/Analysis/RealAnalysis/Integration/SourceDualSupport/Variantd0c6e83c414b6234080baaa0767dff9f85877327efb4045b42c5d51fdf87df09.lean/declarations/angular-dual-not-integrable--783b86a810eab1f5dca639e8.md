# angular_dual_not_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cef984a-4e4b-1333-15fc-8052af01d5c4",
  "kind": "theorem",
  "lexical_name": "angular_dual_not_integrable",
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
  "slug": "angular-dual-not-integrable--783b86a810eab1f5dca639e8",
  "source": {
    "blob": "66e41008fc93180e77b7b4305179fde184cc4e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDualSupport/Variantd0c6e83c414b6234080baaa0767dff9f85877327efb4045b42c5d51fdf87df09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:783b86a810eab1f5dca639e8862f86db781ea8109188ae7bb3d457cb4c4cc270",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDualSupport/Variantd0c6e83c414b6234080baaa0767dff9f85877327efb4045b42c5d51fdf87df09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cef984a-4e4b-1333-15fc-8052af01d5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_dual_not_integrable (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ Integrable (angularSignDuality f : ℝ → ℂ) := by
  intro hi
  apply standard_dual_not_integrable A hA f hf
  have he : (angularSignDuality f : ℝ → ℂ) =ᵐ[volume]
      fun x => -(signFourierDuality f : ℝ → ℂ) x := by
    change (-signFourierDuality f : ComplexL2) =ᵐ[volume] _
    exact Lp.coeFn_neg _
  have hn : Integrable (fun x => -(signFourierDuality f : ℝ → ℂ) x) := hi.congr he
  simpa using hn.neg

/-- L² and compact support suffice for L¹; continuity is unnecessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDualSupport/Variantd0c6e83c414b6234080baaa0767dff9f85877327efb4045b42c5d51fdf87df09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDualSupport/Variantd0c6e83c414b6234080baaa0767dff9f85877327efb4045b42c5d51fdf87df09.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e41008fc93180e77b7b4305179fde184cc4e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

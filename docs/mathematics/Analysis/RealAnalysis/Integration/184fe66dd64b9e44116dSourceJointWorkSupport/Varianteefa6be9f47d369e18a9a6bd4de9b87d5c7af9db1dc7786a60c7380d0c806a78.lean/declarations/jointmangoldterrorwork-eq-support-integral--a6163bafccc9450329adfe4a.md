# jointMangoldtErrorWork_eq_support_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a95e91-a50a-1b80-486c-53db1b9cacf4",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_support_integral",
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
  "slug": "jointmangoldterrorwork-eq-support-integral--a6163bafccc9450329adfe4a",
  "source": {
    "blob": "9f09a4cd7934aa15eff66f6065659b363d2131aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6163bafccc9450329adfe4a4e7fdd55e08cb95f1ec8a745134dabb1071da9d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a95e91-a50a-1b80-486c-53db1b9cacf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_support_integral (A : ℝ) (hA : 1 ≤ A) :
    jointMangoldtErrorWork A =
      ∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
        mangoldtLogError t * deriv (jointMangoldtTestProfile A) t := by
  simpa only [centeredErrorWork, sub_zero, jointMangoldtErrorWork] using
    centeredErrorWork_eq_support_integral A 0 hA

/-- If the support is below the retained lower boundary, the actual work is exactly zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f09a4cd7934aa15eff66f6065659b363d2131aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

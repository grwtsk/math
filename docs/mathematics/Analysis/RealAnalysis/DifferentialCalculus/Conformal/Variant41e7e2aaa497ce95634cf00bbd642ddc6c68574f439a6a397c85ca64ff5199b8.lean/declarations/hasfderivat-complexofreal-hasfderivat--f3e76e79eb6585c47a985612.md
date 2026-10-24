# HasFDerivAt.complexOfReal_hasFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ad63fd3-29c3-6b16-ba20-55f1ee4dc0d1",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.complexOfReal_hasFDerivAt",
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
  "slug": "hasfderivat-complexofreal-hasfderivat--f3e76e79eb6585c47a985612",
  "source": {
    "blob": "627511b4b28067f5ecb9658033aa3c16f4738bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 305,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e76e79eb6585c47a9856120890008f770ce736a1576f23776d3f04f84f346c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad63fd3-29c3-6b16-ba20-55f1ee4dc0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem HasFDerivAt.complexOfReal_hasFDerivAt {f' : ℂ →L[ℝ] E}
    (h₁ : HasFDerivAt f f' x) (h₂ : f' I = I • f' 1) :
    HasFDerivAt f (f'.complexOfReal h₂) x :=
  hasFDerivAt_of_restrictScalars ℝ h₁ rfl

/--
In cases where the **Cauchy-Riemann Equation** guarantees complex differentiability at `x`, the
complex derivative equals `ContinuousLinearMap.complexOfReal` of the real derivative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `627511b4b28067f5ecb9658033aa3c16f4738bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

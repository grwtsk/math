# FiniteSamplingCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e32a85b5dc1f2df6be39754ad86370949bd9c19d4cc896e253bf970f291b0f89",
  "kind": "def",
  "lexical_name": "FiniteSamplingCheckpoint",
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
  "slug": "finitesamplingcheckpoint--bcdd2dd03bd4f8c2d3687733",
  "source": {
    "blob": "027f55f8a4b77c95b5f7c920905a68866bf8c82a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcdd2dd03bd4f8c2d368773392a42d44b99fa028c4c5f07a5ed09b546e10712f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e32a85b5dc1f2df6be39754ad86370949bd9c19d4cc896e253bf970f291b0f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteSamplingCheckpoint : Prop :=
  ∀ g : ℝ → ℝ,
    ContDiff ℝ 1 g →
    ∀ N : ℕ,
      |leftSampleSum g N -
          ∫ u in (1 : ℝ)..(N + 1 : ℝ), g u| ≤
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), |deriv g u|

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027f55f8a4b77c95b5f7c920905a68866bf8c82a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

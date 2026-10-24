# IntegralDeterminantInterpretation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5269dcec26e31b1f0572df9f38ad9d485aa1ddff672f86a1833d048a261ec2c6",
  "kind": "inductive",
  "lexical_name": "IntegralDeterminantInterpretation",
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
  "slug": "integraldeterminantinterpretation--48273b0c8a3353a9402d7c32",
  "source": {
    "blob": "7d34aae4cdf56d1a55a99b4808780c762ec8661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48273b0c8a3353a9402d7c32a1fa6f64242f6a044d570318dfe4fde50056e5bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5269dcec26e31b1f0572df9f38ad9d485aa1ddff672f86a1833d048a261ec2c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IntegralDeterminantInterpretation
  | permutationParity
  | nondegeneracy
  | determinantLineInput
  deriving DecidableEq, Repr

/-- Determinant applicability for one exact integral permutation lift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d34aae4cdf56d1a55a99b4808780c762ec8661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

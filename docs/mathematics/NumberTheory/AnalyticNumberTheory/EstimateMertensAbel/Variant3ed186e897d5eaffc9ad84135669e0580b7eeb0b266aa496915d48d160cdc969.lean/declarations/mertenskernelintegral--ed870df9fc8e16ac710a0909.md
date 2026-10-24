# mertensKernelIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4b8841f6e8643bb1ef8e063e0c851f35ceed0855941f05b9a47be649bdf9dae",
  "kind": "def",
  "lexical_name": "mertensKernelIntegral",
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
  "slug": "mertenskernelintegral--ed870df9fc8e16ac710a0909",
  "source": {
    "blob": "216b10f4a9f3be4e5f78497c555f9aad1b1f8280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed870df9fc8e16ac710a09098bc776dc518a1378f066da7a84f7e45f529b347c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4b8841f6e8643bb1ef8e063e0c851f35ceed0855941f05b9a47be649bdf9dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mertensKernelIntegral (A : ℝ) (Phi : ℝ → ℝ) : ℝ :=
  -(∫ x in Ioc (sourceLower A) (sourceUpper A),
      mertens x * deriv Phi x)

/-- Abel transport on the exact source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216b10f4a9f3be4e5f78497c555f9aad1b1f8280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

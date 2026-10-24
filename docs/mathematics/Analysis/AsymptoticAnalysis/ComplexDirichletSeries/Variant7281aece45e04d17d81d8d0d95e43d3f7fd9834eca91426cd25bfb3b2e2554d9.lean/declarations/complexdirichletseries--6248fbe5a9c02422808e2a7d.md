# complexDirichletSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c1d89cc1d71d752219578758798bc26ac3a5f955e69b0bf04855cd8e769b6f3",
  "kind": "def",
  "lexical_name": "complexDirichletSeries",
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
  "slug": "complexdirichletseries--6248fbe5a9c02422808e2a7d",
  "source": {
    "blob": "f7540aab9d95b6222ad12d00e0893f765c752019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6248fbe5a9c02422808e2a7ddf3da8a121c87432681db975a9c56ef662d9cdf7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c1d89cc1d71d752219578758798bc26ac3a5f955e69b0bf04855cd8e769b6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def complexDirichletSeries
    (a : ArithFn Complex)
    (s : Complex) : Complex :=
  ∑' n : Nat, complexDirichletTerm a s n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7540aab9d95b6222ad12d00e0893f765c752019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# IsProjectiveLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c16d02bdd8a18be5b91f5fe85981f25ad9837ca49daaeaaca9800a8c2436ab0",
  "kind": "def",
  "lexical_name": "IsProjectiveLimit",
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
  "slug": "isprojectivelimit--aa34e2e48e4eb8af9d6b237d",
  "source": {
    "blob": "8c0a781c114bf255d86567cf590a4f29d77fedd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa34e2e48e4eb8af9d6b237db87049bbc7ff5457011a0907adc9b6dc136f451e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c16d02bdd8a18be5b91f5fe85981f25ad9837ca49daaeaaca9800a8c2436ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsProjectiveLimit (μ : Measure (∀ i, α i))
    (P : ∀ J : Finset ι, Measure (∀ j : J, α j)) : Prop :=
  ∀ I : Finset ι, (μ.map I.restrict) = P I

namespace IsProjectiveLimit

variable {μ ν : Measure (∀ i, α i)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0a781c114bf255d86567cf590a4f29d77fedd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

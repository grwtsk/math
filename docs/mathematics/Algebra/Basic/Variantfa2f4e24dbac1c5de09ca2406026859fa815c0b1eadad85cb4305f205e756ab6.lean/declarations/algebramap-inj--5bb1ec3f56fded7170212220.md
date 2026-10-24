# algebraMap_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:952b57c8-303a-bd80-7452-13fb98aa4c02",
  "kind": "theorem",
  "lexical_name": "algebraMap_inj",
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
  "slug": "algebramap-inj--5bb1ec3f56fded7170212220",
  "source": {
    "blob": "b95883c8fde2d934cbcc20196417a511d1ed7c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 134,
    "path": "GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb1ec3f56fded717021222021515a87050f3f4cd27d0ce9d2875ea7903bfb51",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952b57c8-303a-bd80-7452-13fb98aa4c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_inj (x y : R) :
    algebraMap R (SymmetricAlgebra R M) x = algebraMap R (SymmetricAlgebra R M) y ↔ x = y :=
  (algebraMap_leftInverse M).injective.eq_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95883c8fde2d934cbcc20196417a511d1ed7c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

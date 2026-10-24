# SeparationQuotient.instModuleFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb9f84b4d5e191f176cac445ef77acdb3a27fb1b80373fdb03f5031b02e6af9c",
  "kind": "instance",
  "lexical_name": "SeparationQuotient.instModuleFinite",
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
  "slug": "separationquotient-instmodulefinite--c6cd2a84f5d4b1df3d1cc346",
  "source": {
    "blob": "06c674f225a63d741b7edda8ad03dbfe2cfe2167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/Topology/FiniteDimensional/Variantf20eed8b346beb3bfa8c135d1adb725369f172011799fa726d21c44320f2de85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6cd2a84f5d4b1df3d1cc3462562ea3f47196cb410839cf1241c0094eba92c54",
  "verification": {
    "reference": "docs/verification/Topology/FiniteDimensional/Variantf20eed8b346beb3bfa8c135d1adb725369f172011799fa726d21c44320f2de85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb9f84b4d5e191f176cac445ef77acdb3a27fb1b80373fdb03f5031b02e6af9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SeparationQuotient.instModuleFinite
    {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M] [Module.Finite R M]
    [TopologicalSpace M] [ContinuousAdd M] [ContinuousConstSMul R M] :
    Module.Finite R (SeparationQuotient M) :=
  Module.Finite.of_surjective (mkCLM R M).toLinearMap Quotient.mk_surjective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FiniteDimensional/Variantf20eed8b346beb3bfa8c135d1adb725369f172011799fa726d21c44320f2de85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FiniteDimensional/Variantf20eed8b346beb3bfa8c135d1adb725369f172011799fa726d21c44320f2de85.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c674f225a63d741b7edda8ad03dbfe2cfe2167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

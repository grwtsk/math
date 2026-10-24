# _root_.GRWTSK.Analysis.ToDualMap.Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.innerSL_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe3295c1-7f0d-2765-6a40-4a3490c96a26",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.ToDualMap.Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.innerSL_inj",
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
  "slug": "root-grwtsk-analysis-todualmap-variant08b322e273f407797546852f889b1ebd52--feae6415beed220d03186069",
  "source": {
    "blob": "0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feae6415beed220d03186069778d5ca9631e6031e5ae48a29eee2e29673d30da",
  "verification": {
    "reference": "docs/verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe3295c1-7f0d-2765-6a40-4a3490c96a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.ToDualMap.Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.innerSL_inj {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] {x y : E} :
    innerSL 𝕜 x = innerSL 𝕜 y ↔ x = y :=
  (toDualMap 𝕜 E).injective.eq_iff

section NullSubmodule

open LinearMap

/-- For each `x : E`, the kernel of `⟪x, ⬝⟫` includes the null space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

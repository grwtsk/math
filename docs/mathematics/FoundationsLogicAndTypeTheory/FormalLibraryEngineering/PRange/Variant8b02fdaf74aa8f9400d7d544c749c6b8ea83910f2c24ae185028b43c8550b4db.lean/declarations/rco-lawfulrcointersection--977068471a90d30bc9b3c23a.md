# Rco.LawfulRcoIntersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82b6e576cd0e96dd781d660e9549e6765aabc6de568e72f0d6c819c9556bd6fb",
  "kind": "class",
  "lexical_name": "Rco.LawfulRcoIntersection",
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
  "slug": "rco-lawfulrcointersection--977068471a90d30bc9b3c23a",
  "source": {
    "blob": "6a0f7f742690f1a7fdce13c14cb01a4d3901106d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:977068471a90d30bc9b3c23a99a2d8606e377fb850f12c2567e5b9757f5579a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82b6e576cd0e96dd781d660e9549e6765aabc6de568e72f0d6c819c9556bd6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Rco.LawfulRcoIntersection (α : Type w) [LT α] [LE α]
    [HasRcoIntersection α] where
  /--
  Every element of the intersection is an element of both original ranges.
  -/
  mem_intersection_iff {a : α} {r : Rco α} {s : Rco α} :
    a ∈ HasRcoIntersection.intersection r s ↔ a ∈ r ∧ a ∈ s

/--
This type class allows taking the intersection of a left-closed right-unbounded range with a
left-closed right-open range, resulting in another left-closed right-open range.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0f7f742690f1a7fdce13c14cb01a4d3901106d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

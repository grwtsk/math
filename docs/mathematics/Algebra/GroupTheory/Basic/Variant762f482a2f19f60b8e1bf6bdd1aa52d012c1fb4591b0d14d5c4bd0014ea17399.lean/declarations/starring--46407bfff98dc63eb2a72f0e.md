# StarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da23c1214e0f3a686b06218be5ea4aeb15d29ae44a2fea53b3a6e87053d50c11",
  "kind": "class",
  "lexical_name": "StarRing",
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
  "slug": "starring--46407bfff98dc63eb2a72f0e",
  "source": {
    "blob": "e80068786d48080aa34fb5c8a2468f5ffeb7f531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 308,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46407bfff98dc63eb2a72f0e434e406992979294d78a563d15b0e962242f134f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da23c1214e0f3a686b06218be5ea4aeb15d29ae44a2fea53b3a6e87053d50c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class StarRing (R : Type u) [NonUnitalNonAssocSemiring R] extends StarMul R where
  /-- `star` commutes with addition -/
  star_add : ∀ r s : R, star (r + s) = star r + star s
#align star_ring StarRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80068786d48080aa34fb5c8a2468f5ffeb7f531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# CSLiftVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef73770881ea16a744e84b043b37b3f831b3455da9ce954787104d3901e1ee92",
  "kind": "class",
  "lexical_name": "CSLiftVal",
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
  "slug": "csliftval--6ae2edff8019a97b862abc66",
  "source": {
    "blob": "3f4e11fa8d49fd9de908d845bdffc55407fc5c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 532,
    "path": "GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ae2edff8019a97b862abc6676a7ca40a3c8df95bef185b6f9b2950a049fcf95",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef73770881ea16a744e84b043b37b3f831b3455da9ce954787104d3901e1ee92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CSLiftVal {α} {β : outParam (Type u)} [CSLift α β] (a : α) (b : outParam β) : Prop where
  /-- The output value `b` is equal to the lift of `a`. This can be supplied by the default
  instance which sets `b := lift a`, but `ring` will treat this as an atom so it is more useful
  when there are other instances which distribute addition or multiplication. -/
  eq : b = CSLift.lift a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4e11fa8d49fd9de908d845bdffc55407fc5c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

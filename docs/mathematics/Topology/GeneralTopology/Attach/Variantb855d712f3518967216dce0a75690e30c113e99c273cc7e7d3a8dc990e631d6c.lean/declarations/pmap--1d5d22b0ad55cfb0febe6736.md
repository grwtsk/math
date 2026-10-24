# pmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2ad0cdcc4b3de68288a4954157996fa8955b007060c05470d307fff341f72e5",
  "kind": "def",
  "lexical_name": "pmap",
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
  "slug": "pmap--1d5d22b0ad55cfb0febe6736",
  "source": {
    "blob": "298de21244dbf716048660a16d8bc2d10ab5c10c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d5d22b0ad55cfb0febe6736a1bf80d99cf60253041475296a0017b797b0cd6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2ad0cdcc4b3de68288a4954157996fa8955b007060c05470d307fff341f72e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pmap {P : α → Prop} (f : ∀ a, P a → β) : ∀ l : List α, (H : ∀ a ∈ l, P a) → List β
  | [], _ => []
  | a :: l, H => f a (forall_mem_cons.1 H).1 :: pmap f l (forall_mem_cons.1 H).2

/--
Unsafe implementation of `attachWith` that takes advantage of the fact that the representation of
`List {x // P x}` is the same as the input `List α`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298de21244dbf716048660a16d8bc2d10ab5c10c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

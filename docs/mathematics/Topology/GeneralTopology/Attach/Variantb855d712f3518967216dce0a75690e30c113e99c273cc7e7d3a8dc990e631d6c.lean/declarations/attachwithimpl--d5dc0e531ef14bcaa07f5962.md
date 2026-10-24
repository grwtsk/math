# attachWithImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed0e634ede19b9b201d1f9ef955143bdb24b495ea867b5f6cd9430dd5412c122",
  "kind": "def",
  "lexical_name": "attachWithImpl",
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
  "slug": "attachwithimpl--d5dc0e531ef14bcaa07f5962",
  "source": {
    "blob": "298de21244dbf716048660a16d8bc2d10ab5c10c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5dc0e531ef14bcaa07f5962f38bf001ea5b9bb7c8b344b25bc6d07b33b5eea8",
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

Occurrence: `declaration:ed0e634ede19b9b201d1f9ef955143bdb24b495ea867b5f6cd9430dd5412c122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private unsafe def attachWithImpl
    (l : List α) (P : α → Prop) (_ : ∀ x ∈ l, P x) : List {x // P x} := unsafeCast l

/--
“Attaches” individual proofs to a list of values that satisfy a predicate `P`, returning a list of
elements in the corresponding subtype `{ x // P x }`.

`O(1)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298de21244dbf716048660a16d8bc2d10ab5c10c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

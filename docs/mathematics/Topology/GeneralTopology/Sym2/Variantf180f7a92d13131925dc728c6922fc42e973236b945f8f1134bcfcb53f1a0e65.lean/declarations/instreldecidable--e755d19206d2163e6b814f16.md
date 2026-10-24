# instRelDecidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:769ecce3160992b7686f81023ea6da73cbac42a449268d5deca5c5e8f5e48475",
  "kind": "instance",
  "lexical_name": "instRelDecidable",
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
  "slug": "instreldecidable--e755d19206d2163e6b814f16",
  "source": {
    "blob": "dd109e582358b0055407f41912a3327d6eb7d1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 651,
    "line": 649,
    "path": "GRWTSK/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e755d19206d2163e6b814f16102900b6b963d5dac3422c65b73f615d84c25ea8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:769ecce3160992b7686f81023ea6da73cbac42a449268d5deca5c5e8f5e48475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instRelDecidable (α : Type*) [DecidableEq α] : DecidableRel (Sym2.Rel α) := fun x y =>
  decidable_of_bool (relBool x y) (relBool_spec x y)
-- Porting note: add this other version needed for Data.Finset.Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd109e582358b0055407f41912a3327d6eb7d1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

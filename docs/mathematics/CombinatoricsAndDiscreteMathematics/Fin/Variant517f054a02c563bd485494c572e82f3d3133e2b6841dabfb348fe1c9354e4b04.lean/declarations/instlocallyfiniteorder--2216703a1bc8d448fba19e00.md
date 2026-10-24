# instLocallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b83ad3d45d826702f62b304650f27dea98e1da66db6380a846804e7e29363b3f",
  "kind": "instance",
  "lexical_name": "instLocallyFiniteOrder",
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
  "slug": "instlocallyfiniteorder--2216703a1bc8d448fba19e00",
  "source": {
    "blob": "c7c3cda875a1dd381e7157a6be961101407e45ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant517f054a02c563bd485494c572e82f3d3133e2b6841dabfb348fe1c9354e4b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2216703a1bc8d448fba19e00939160d54ac36527cd4292a4dfefec60150c4d8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant517f054a02c563bd485494c572e82f3d3133e2b6841dabfb348fe1c9354e4b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b83ad3d45d826702f62b304650f27dea98e1da66db6380a846804e7e29363b3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLocallyFiniteOrder (n : ℕ) : LocallyFiniteOrder (Fin n) where
  finsetIcc a b := attachFin (Icc a b) fun x hx ↦ (mem_Icc.mp hx).2.trans_lt b.2
  finsetIco a b := attachFin (Ico a b) fun x hx ↦ (mem_Ico.mp hx).2.trans b.2
  finsetIoc a b := attachFin (Ioc a b) fun x hx ↦ (mem_Ioc.mp hx).2.trans_lt b.2
  finsetIoo a b := attachFin (Ioo a b) fun x hx ↦ (mem_Ioo.mp hx).2.trans b.2
  finset_mem_Icc a b := by simp
  finset_mem_Ico a b := by simp
  finset_mem_Ioc a b := by simp
  finset_mem_Ioo a b := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant517f054a02c563bd485494c572e82f3d3133e2b6841dabfb348fe1c9354e4b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant517f054a02c563bd485494c572e82f3d3133e2b6841dabfb348fe1c9354e4b04.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c3cda875a1dd381e7157a6be961101407e45ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

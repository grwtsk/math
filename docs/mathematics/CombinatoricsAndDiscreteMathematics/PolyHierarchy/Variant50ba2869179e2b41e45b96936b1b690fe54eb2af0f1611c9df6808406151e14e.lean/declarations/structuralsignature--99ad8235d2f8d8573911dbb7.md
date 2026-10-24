# StructuralSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87677a22755fa5a78694848945a69d7695e4f4b66e214b58b79564a02384db28",
  "kind": "structure",
  "lexical_name": "StructuralSignature",
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
  "slug": "structuralsignature--99ad8235d2f8d8573911dbb7",
  "source": {
    "blob": "6e480506c178f7b2cd3ee23df9cc7979b61868f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99ad8235d2f8d8573911dbb76d56b58ade98a4398faa9dc1c0589e5202bd53b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87677a22755fa5a78694848945a69d7695e4f4b66e214b58b79564a02384db28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructuralSignature where
  SortType : Type u
  Relation : Type v
  sortFintype : Fintype SortType
  sortDecidableEq : DecidableEq SortType
  relationFintype : Fintype Relation
  relationDecidableEq : DecidableEq Relation
  arity : Relation → Nat
  version : Nat

attribute [instance] StructuralSignature.sortFintype
  StructuralSignature.sortDecidableEq
  StructuralSignature.relationFintype
  StructuralSignature.relationDecidableEq

/--
An authoritative finite structural system.  Facts are predicates rather than a
serialization, so source order and filesystem position are absent.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e480506c178f7b2cd3ee23df9cc7979b61868f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

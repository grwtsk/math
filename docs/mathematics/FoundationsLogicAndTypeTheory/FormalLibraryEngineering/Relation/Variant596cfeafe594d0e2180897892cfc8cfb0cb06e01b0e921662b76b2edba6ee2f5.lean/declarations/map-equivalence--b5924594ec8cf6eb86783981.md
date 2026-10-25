# map_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45666e34-86ca-e8f8-60ff-3b8d1f9fd72b",
  "kind": "lemma",
  "lexical_name": "map_equivalence",
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
  "slug": "map-equivalence--b5924594ec8cf6eb86783981",
  "source": {
    "blob": "0694fec5df14f076f63555f99cdaee91942b1466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant596cfeafe594d0e2180897892cfc8cfb0cb06e01b0e921662b76b2edba6ee2f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5924594ec8cf6eb86783981bc54d6b3b41e0f016698649665efdd8138ed7a85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant596cfeafe594d0e2180897892cfc8cfb0cb06e01b0e921662b76b2edba6ee2f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45666e34-86ca-e8f8-60ff-3b8d1f9fd72b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_equivalence {r : α → α → Prop} (hr : Equivalence r) (f : α → β)
    (hf : f.Surjective) (hf_ker : ∀ x y, f x = f y → r x y) :
    Equivalence (Relation.Map r f f) where
  refl := map_reflexive hr.reflexive hf
  symm := @(map_symmetric hr.symmetric _)
  trans := @(map_transitive hr.transitive hf_ker)

-- TODO: state this using `≤`, after adjusting imports.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant596cfeafe594d0e2180897892cfc8cfb0cb06e01b0e921662b76b2edba6ee2f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant596cfeafe594d0e2180897892cfc8cfb0cb06e01b0e921662b76b2edba6ee2f5.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0694fec5df14f076f63555f99cdaee91942b1466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

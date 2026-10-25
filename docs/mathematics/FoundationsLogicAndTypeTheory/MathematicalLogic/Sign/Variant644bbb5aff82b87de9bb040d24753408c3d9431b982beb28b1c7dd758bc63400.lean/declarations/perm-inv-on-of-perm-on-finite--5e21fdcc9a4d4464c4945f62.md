# perm_inv_on_of_perm_on_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05ae132b86102a2cde2ffbc4acd150637e8d8e20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3e781da-4be7-7d6f-0e60-99b1091a58f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acae9617-66ec-c306-64cb-cb2997bc4061",
  "kind": "theorem",
  "lexical_name": "perm_inv_on_of_perm_on_finite",
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
  "slug": "perm-inv-on-of-perm-on-finite--5e21fdcc9a4d4464c4945f62",
  "source": {
    "blob": "05ae132b86102a2cde2ffbc4acd150637e8d8e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e21fdcc9a4d4464c4945f6201f8f5e8293e747da52888cbe6929d3a8bae7042",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acae9617-66ec-c306-64cb-cb2997bc4061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_inv_on_of_perm_on_finite {f : Perm α} {p : α → Prop} [Finite { x // p x }]
    (h : ∀ x, p x → p (f x)) {x : α} (hx : p x) : p (f⁻¹ x) :=
  -- Porting note: relies heavily on the definitions of `Subtype` and `setOf` unfolding to their
  -- underlying predicate.
  have : Finite { x | p x } := ‹_›
  perm_inv_mapsTo_of_mapsTo (s := {x | p x}) f h hx
#align equiv.perm.perm_inv_on_of_perm_on_finite Equiv.Perm.perm_inv_on_of_perm_on_finite

/-- If the permutation `f` maps `{x // p x}` into itself, then this returns the permutation
  on `{x // p x}` induced by `f`. Note that the `h` hypothesis is weaker than for
  `Equiv.Perm.subtypePerm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05ae132b86102a2cde2ffbc4acd150637e8d8e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

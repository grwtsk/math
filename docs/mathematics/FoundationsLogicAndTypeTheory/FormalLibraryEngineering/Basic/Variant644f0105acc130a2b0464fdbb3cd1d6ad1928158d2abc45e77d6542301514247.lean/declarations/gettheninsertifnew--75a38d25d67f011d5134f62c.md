# getThenInsertIfNew?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b96965ae1c2e1acd596da6d587bcbd7a71f2aa07051d8dae9b263a4e05122f7",
  "kind": "def",
  "lexical_name": "getThenInsertIfNew?",
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
  "slug": "gettheninsertifnew--75a38d25d67f011d5134f62c",
  "source": {
    "blob": "3daab9fd84741c0c8a909526f675fc6f3cd00144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75a38d25d67f011d5134f62cc442641eee7fe802cdb823daa83c8736119e724a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b96965ae1c2e1acd596da6d587bcbd7a71f2aa07051d8dae9b263a4e05122f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getThenInsertIfNew? [LawfulEqCmp cmp] (t : DTreeMap α β cmp) (a : α) (b : β a) :
    Option (β a) × DTreeMap α β cmp :=
  letI : Ord α := ⟨cmp⟩
  let p := t.inner.getThenInsertIfNew? a b t.wf.balanced
  (p.1, ⟨p.2, t.wf.getThenInsertIfNew?⟩)

/--
Returns `true` if there is a mapping for the given key `a` or a key that is equal to `a` according
to the comparator `cmp`. There is also a `Prop`-valued version
of this: `a ∈ t` is equivalent to `t.contains a = true`.

Observe that this is different behavior than for lists: for lists, `∈` uses `=` and `contains` uses
`==` for equality checks, while for tree maps, both use the given comparator `cmp`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daab9fd84741c0c8a909526f675fc6f3cd00144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

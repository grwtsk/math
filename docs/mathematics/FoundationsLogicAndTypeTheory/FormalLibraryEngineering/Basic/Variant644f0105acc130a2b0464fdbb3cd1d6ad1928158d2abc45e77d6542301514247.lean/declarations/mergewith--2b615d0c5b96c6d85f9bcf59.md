# mergeWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0fd0acc94833985a89fba1e32ad5d645144fbec054837a9a45a67026165f8a1",
  "kind": "def",
  "lexical_name": "mergeWith",
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
  "slug": "mergewith--2b615d0c5b96c6d85f9bcf59",
  "source": {
    "blob": "3daab9fd84741c0c8a909526f675fc6f3cd00144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 965,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b615d0c5b96c6d85f9bcf5917189199f3112177ce81acc1aa1e1f5f66b9f977",
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

Occurrence: `declaration:a0fd0acc94833985a89fba1e32ad5d645144fbec054837a9a45a67026165f8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 965–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeWith [LawfulEqCmp cmp] (mergeFn : (a : α) → β a → β a → β a) (t₁ t₂ : DTreeMap α β cmp) :
    DTreeMap α β cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t₁.inner.mergeWith mergeFn t₂.inner t₁.wf.balanced |>.impl, t₁.wf.mergeWith⟩

namespace Const

variable {β : Type v}

@[inline, inherit_doc DTreeMap.toList]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant644f0105acc130a2b0464fdbb3cd1d6ad1928158d2abc45e77d6542301514247.lean#L965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daab9fd84741c0c8a909526f675fc6f3cd00144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# checkIrrelevance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b0acf6c558d416b58fd02023936c08ee86751dd5f871c762fdaeec63fb11069",
  "kind": "def",
  "lexical_name": "checkIrrelevance",
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
  "slug": "checkirrelevance--fe0fb5a1193a7f7306f83285",
  "source": {
    "blob": "3469c7a1357d471e36988d02f8f2f3e0aa4aace1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe0fb5a1193a7f7306f83285666ba42d83ae158474838192ccc132a817b07c60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b0acf6c558d416b58fd02023936c08ee86751dd5f871c762fdaeec63fb11069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkIrrelevance (root : MVarClusterRef) : CoreM Unit :=
  preTraverseDown
    (λ gref => do
      let g ← gref.get
      go s!"goal {g.id}" (← g.isIrrelevantNoCache) g.isIrrelevant)
    (λ rref => do
      let r ← rref.get
      go s!"rapp {r.id}" (← r.isIrrelevantNoCache) r.isIrrelevant)
    (λ cref => do
      let c ← cref.get
      go (← mvarClusterId c) (← c.isIrrelevantNoCache) c.isIrrelevant)
    (TreeRef.mvarCluster root)
  where
    @[inline]
    go (id : String) (expected actual : Bool) : CoreM Bool := do
      match actual, expected with
      | true, false => throwError
        "{Check.tree.name}: {id} is marked as irrelevant, but is not irrelevant."
      | false, true => throwError
        "{Check.tree.name}: {id} is marked as not irrelevant, but is irrelevant."
      | _, _ => return true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469c7a1357d471e36988d02f8f2f3e0aa4aace1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

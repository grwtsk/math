# getEntryLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b19aadbb5e7c11954ffcc66b82a07a6a94326c462318010c8a43a2e5e706317",
  "kind": "def",
  "lexical_name": "getEntryLE",
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
  "slug": "getentryle--4b3b24504c504a92abddea33",
  "source": {
    "blob": "c4bf7a41b47d0f24218a9c6f8f40300021f51dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 1000,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b3b24504c504a92abddea337671d6acd65f9fa74887e32fb5991ae04cb9ecd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b19aadbb5e7c11954ffcc66b82a07a6a94326c462318010c8a43a2e5e706317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getEntryLE [Ord α] [TransOrd α] (k : α) :
    (t : Impl α β) → (ho : t.Ordered) → (he : ∃ a ∈ t, (compare a k).isLE) → α × β
  | .leaf, _, he => False.elim <| by obtain ⟨_, ha, _⟩ := he; cases ha
  | .inner _ ky y l r, ho, he => match hkky : compare k ky with
    | .gt => getEntryLED k r ⟨ky, y⟩
    | .eq => ⟨ky, y⟩
    | .lt => getEntryLE k l ho.left <| by
      obtain ⟨a, hm, hc⟩ := he
      refine ⟨a, ?_, hc⟩
      apply Ordered.mem_inner_iff_mem_left .. |>.mp hm
      exact TransCmp.lt_of_isLE_of_lt hc hkky

/-- Implementation detail of the tree map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4bf7a41b47d0f24218a9c6f8f40300021f51dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

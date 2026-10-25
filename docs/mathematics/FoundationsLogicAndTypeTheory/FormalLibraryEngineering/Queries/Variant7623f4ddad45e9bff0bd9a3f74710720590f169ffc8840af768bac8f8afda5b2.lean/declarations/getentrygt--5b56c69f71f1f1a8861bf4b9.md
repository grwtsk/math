# getEntryGT?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d40f53821c78855a02af42c761a9fbf3473befdd446f8b4c13a0ce914a654214",
  "kind": "def",
  "lexical_name": "getEntryGT?",
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
  "slug": "getentrygt--5b56c69f71f1f1a8861bf4b9",
  "source": {
    "blob": "c4bf7a41b47d0f24218a9c6f8f40300021f51dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 900,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b56c69f71f1f1a8861bf4b963cdfb4ec48d504542048e1cdb665d2ce1a0cebf",
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

Occurrence: `declaration:d40f53821c78855a02af42c761a9fbf3473befdd446f8b4c13a0ce914a654214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getEntryGT? [Ord α] (k : α) : Impl α β → Option (α × β) :=
  go none
where
  go (best : Option (α × β)) : Impl α β → Option (α × β)
    | .leaf => best
    | .inner _ ky y l r => match compare k ky with
      | .lt => go (some ⟨ky, y⟩) l
      | _ => go best r

/-- Implementation detail of the tree map -/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4bf7a41b47d0f24218a9c6f8f40300021f51dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

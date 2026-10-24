# closure_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76484057-6e02-4b94-33df-aa6f935bda60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b34302b5-2a09-b3cf-82a3-7a9bb819711e",
  "kind": "theorem",
  "lexical_name": "closure_iUnion",
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
  "slug": "closure-iunion--4dc345934301ab930a85d68b",
  "source": {
    "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 539,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc345934301ab930a85d68bc63e34e9067aedfe9db5131944c2844eb94d9f3f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34302b5-2a09-b3cf-82a3-7a9bb819711e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_iUnion {ι : Type*} [Finite ι] (f : ι → Set α) :
    closure (⋃ i, f i) = ⋃ i, closure (f i) := by
  cases nonempty_fintype ι
  convert Finset.univ.closure_biUnion f <;> simp
#align closure_Union closure_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2a1cfb93171ea1e3c9fdef9c241d062856a45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# reattach_all_marked_metadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6c431b2fa322f7cef5fcc09b696f5759aee50c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 619,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateMaintenance/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54f412df-946c-0965-b391-fe56d6401f9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e179f1e9-7535-36ea-2662-73a2013688ee",
  "kind": "theorem",
  "lexical_name": "reattach_all_marked_metadata",
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
  "slug": "reattach-all-marked-metadata--9f9a85fbf3e454a4e99b7700",
  "source": {
    "blob": "d6c431b2fa322f7cef5fcc09b696f5759aee50c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 619,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f9a85fbf3e454a4e99b77000475b0869a34f8c28a150b77608b063be181dc3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e179f1e9-7535-36ea-2662-73a2013688ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reattach_all_marked_metadata {Metadata : Type} (metadata : List (Option Metadata)) :
    attachOccurrences metadata (markedIndices (metadata.map Option.isSome)) =
      some (metadata.filterMap id) := by
  induction metadata with
  | nil => rfl
  | cons head rest ih =>
      cases head with
      | none => simpa [markedIndices, attachOccurrences_shift] using ih
      | some value =>
          simp only [List.map_cons, Option.isSome_some, markedIndices, ↓reduceIte,
            attachOccurrences, List.getElem?_cons_zero,
            attachOccurrences_shift, ih, List.filterMap_cons, id_eq]
          rfl

/-- Composition with the source-verified assembly interface. The emitted list
is supplied by that core's explicit ordered-route-position postcondition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c431b2fa322f7cef5fcc09b696f5759aee50c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

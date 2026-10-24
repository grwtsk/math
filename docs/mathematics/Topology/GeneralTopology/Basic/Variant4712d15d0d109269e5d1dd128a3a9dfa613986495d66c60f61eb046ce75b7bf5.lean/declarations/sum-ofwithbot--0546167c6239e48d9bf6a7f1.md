# sum_ofWithBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ab959332b9188071df0df2fae6a9c90e725afc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6be03a8-64cb-e380-7e2a-cc1f9acab761",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:231cfb8d-e9f3-1d5d-a959-dd2aec919e52",
  "kind": "theorem",
  "lexical_name": "sum_ofWithBot",
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
  "slug": "sum-ofwithbot--0546167c6239e48d9bf6a7f1",
  "source": {
    "blob": "9ab959332b9188071df0df2fae6a9c90e725afc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0546167c6239e48d9bf6a7f1ef1c18a0812c3821ddf15ac6bb7493d45d0d6316",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:231cfb8d-e9f3-1d5d-a959-dd2aec919e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_ofWithBot {M : Type*} [AddCommMonoid M] (boxes : Finset (WithBot (Box ι)))
    (le_of_mem : ∀ J ∈ boxes, (J : WithBot (Box ι)) ≤ I)
    (pairwise_disjoint : Set.Pairwise (boxes : Set (WithBot (Box ι))) Disjoint) (f : Box ι → M) :
    (∑ J ∈ (ofWithBot boxes le_of_mem pairwise_disjoint).boxes, f J) =
      ∑ J ∈ boxes, Option.elim' 0 f J :=
  Finset.sum_eraseNone _ _

open scoped Classical in
/-- Restrict a prepartition to a box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ab959332b9188071df0df2fae6a9c90e725afc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

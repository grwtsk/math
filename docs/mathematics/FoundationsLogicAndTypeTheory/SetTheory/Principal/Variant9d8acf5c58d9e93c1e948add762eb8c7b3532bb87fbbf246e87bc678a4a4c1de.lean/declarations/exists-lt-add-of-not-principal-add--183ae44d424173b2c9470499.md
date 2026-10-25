# exists_lt_add_of_not_principal_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd5c420902bee0dad91716f994571a308018abe3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2fc0ebe-b1c8-b88f-dbee-fa6d1823274e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93b696cb-20ac-f49a-bc9e-a39c4cd32b13",
  "kind": "theorem",
  "lexical_name": "exists_lt_add_of_not_principal_add",
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
  "slug": "exists-lt-add-of-not-principal-add--183ae44d424173b2c9470499",
  "source": {
    "blob": "dd5c420902bee0dad91716f994571a308018abe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183ae44d424173b2c9470499889d5299c7f9748c67096f6d22867dc059828a2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93b696cb-20ac-f49a-bc9e-a39c4cd32b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_add_of_not_principal_add (ha : ¬ Principal (· + ·) a) :
    ∃ b < a, ∃ c < a, b + c = a := by
  rw [not_principal_iff] at ha
  rcases ha with ⟨b, hb, c, hc, H⟩
  refine
    ⟨b, hb, _, lt_of_le_of_ne (sub_le_self a b) fun hab => ?_, Ordinal.add_sub_cancel_of_le hb.le⟩
  rw [← sub_le, hab] at H
  exact H.not_lt hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant9d8acf5c58d9e93c1e948add762eb8c7b3532bb87fbbf246e87bc678a4a4c1de.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5c420902bee0dad91716f994571a308018abe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

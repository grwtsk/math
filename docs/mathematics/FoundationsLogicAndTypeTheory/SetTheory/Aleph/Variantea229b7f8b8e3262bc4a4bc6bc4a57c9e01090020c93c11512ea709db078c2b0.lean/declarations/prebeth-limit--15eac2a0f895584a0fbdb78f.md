# preBeth_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80bcc0ce8ba5f4467458abf43d54be3509b994e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea229b7f8b8e3262bc4a4bc6bc4a57c9e01090020c93c11512ea709db078c2b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cee75802-2038-f678-ccb9-509d91524ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ba75c8-16b9-2388-99a9-d5cda8547996",
  "kind": "theorem",
  "lexical_name": "preBeth_limit",
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
  "slug": "prebeth-limit--15eac2a0f895584a0fbdb78f",
  "source": {
    "blob": "80bcc0ce8ba5f4467458abf43d54be3509b994e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 518,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variantea229b7f8b8e3262bc4a4bc6bc4a57c9e01090020c93c11512ea709db078c2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15eac2a0f895584a0fbdb78fd61095454d5196f04076ab68ec0d81fcf5965306",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variantea229b7f8b8e3262bc4a4bc6bc4a57c9e01090020c93c11512ea709db078c2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ba75c8-16b9-2388-99a9-d5cda8547996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preBeth_limit {o : Ordinal} (ho : IsSuccPrelimit o) :
    preBeth o = ⨆ a : Iio o, preBeth a := by
  rw [preBeth]
  apply (ciSup_mono (bddAbove_of_small _) fun _ ↦ (cantor _).le).antisymm'
  rw [ciSup_le_iff' (bddAbove_of_small _)]
  intro a
  rw [← preBeth_succ]
  exact le_ciSup (bddAbove_of_small _) (⟨_, ho.succ_lt a.2⟩ : Iio o)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variantea229b7f8b8e3262bc4a4bc6bc4a57c9e01090020c93c11512ea709db078c2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variantea229b7f8b8e3262bc4a4bc6bc4a57c9e01090020c93c11512ea709db078c2b0.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80bcc0ce8ba5f4467458abf43d54be3509b994e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

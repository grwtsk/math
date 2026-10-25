# Icc_inter_Icc_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91617a1ee33bddea0cb20fe9a5973173b0081d36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 854,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91bc0c17eb0854e77e4c02a350a7b7645f3415ab03ef837a803dd78f9e762ef4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:781ce834-8316-d134-4bb8-0d785a28d6c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97d479af-b5df-d7e6-f9e7-8fee23565b85",
  "kind": "theorem",
  "lexical_name": "Icc_inter_Icc_eq_singleton",
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
  "slug": "icc-inter-icc-eq-singleton--0d6f7b8328c6fea59540c331",
  "source": {
    "blob": "91617a1ee33bddea0cb20fe9a5973173b0081d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 854,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant91bc0c17eb0854e77e4c02a350a7b7645f3415ab03ef837a803dd78f9e762ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d6f7b8328c6fea59540c3316d946f20babe3e7179cd0df85fdbf5a57710ea99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant91bc0c17eb0854e77e4c02a350a7b7645f3415ab03ef837a803dd78f9e762ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d479af-b5df-d7e6-f9e7-8fee23565b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_inter_Icc_eq_singleton (hab : a ≤ b) (hbc : b ≤ c) : Icc a b ∩ Icc b c = {b} := by
  rw [← Ici_inter_Iic, ← Iic_inter_Ici, inter_inter_inter_comm, Iic_inter_Ici]
  simp [hab, hbc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant91bc0c17eb0854e77e4c02a350a7b7645f3415ab03ef837a803dd78f9e762ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant91bc0c17eb0854e77e4c02a350a7b7645f3415ab03ef837a803dd78f9e762ef4.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91617a1ee33bddea0cb20fe9a5973173b0081d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

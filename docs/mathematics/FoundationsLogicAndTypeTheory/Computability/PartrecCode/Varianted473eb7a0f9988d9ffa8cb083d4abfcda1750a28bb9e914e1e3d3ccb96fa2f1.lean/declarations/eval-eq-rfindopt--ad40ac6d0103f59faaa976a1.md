# eval_eq_rfindOpt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1010,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbae52ce-e56f-6d15-e37c-d17b0ee187a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:306e8ea0-bc30-903d-cf43-091cb47d9b14",
  "kind": "theorem",
  "lexical_name": "eval_eq_rfindOpt",
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
  "slug": "eval-eq-rfindopt--ad40ac6d0103f59faaa976a1",
  "source": {
    "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1014,
    "line": 1010,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad40ac6d0103f59faaa976a18d09048a632075e0293e5d36a8012dbd68235a51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:306e8ea0-bc30-903d-cf43-091cb47d9b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1014.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_eq_rfindOpt (c n) : eval c n = Nat.rfindOpt fun k => evaln k c n :=
  Part.ext fun x => by
    refine evaln_complete.trans (Nat.rfindOpt_mono ?_).symm
    intro a m n hl; apply evaln_mono hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6025514c4913aa2b9140b1f4b471951f60905025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

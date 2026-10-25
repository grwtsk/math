# bsup_eq_blsub_iff_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1854,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39d8abb-6935-530c-4e20-105727ce9e3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:043036c9-498f-f29d-bcdf-9dc204ddaaee",
  "kind": "theorem",
  "lexical_name": "bsup_eq_blsub_iff_succ",
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
  "slug": "bsup-eq-blsub-iff-succ--a68984a6a009d0b1a5aa435b",
  "source": {
    "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1859,
    "line": 1854,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a68984a6a009d0b1a5aa435b4f9c5fa4f706557115ab3812856bd092076d6892",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043036c9-498f-f29d-bcdf-9dc204ddaaee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1854–1859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bsup_eq_blsub_iff_succ {o : Ordinal.{u}} (f : ∀ a < o, Ordinal.{max u v}) :
    bsup.{_, v} o f = blsub.{_, v} o f ↔ ∀ a < blsub.{_, v} o f, succ a < blsub.{_, v} o f := by
  rw [← sup_eq_bsup, ← lsub_eq_blsub]
  apply sup_eq_lsub_iff_succ
#align ordinal.bsup_eq_blsub_iff_succ Ordinal.bsup_eq_blsub_iff_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean#L1854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# even_mul_succ_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fe69b32ee0e075c715947e8aed3773e8e542e92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa40c565-34fe-cf9c-8c5a-29b0b13c7ca6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2ae77f5-b81a-4111-1beb-163842a93eeb",
  "kind": "lemma",
  "lexical_name": "even_mul_succ_self",
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
  "slug": "even-mul-succ-self--0384a2b1c7968683df37e55b",
  "source": {
    "blob": "8fe69b32ee0e075c715947e8aed3773e8e542e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 87,
    "path": "GRWTSK/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0384a2b1c7968683df37e55bf29e95fcf4b5c8d38fede1591ce9d2c2e6e6b970",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ae77f5-b81a-4111-1beb-163842a93eeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma even_mul_succ_self (n : ℤ) : Even (n * (n + 1)) := by
  simpa [even_mul, parity_simps] using n.even_or_odd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe69b32ee0e075c715947e8aed3773e8e542e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

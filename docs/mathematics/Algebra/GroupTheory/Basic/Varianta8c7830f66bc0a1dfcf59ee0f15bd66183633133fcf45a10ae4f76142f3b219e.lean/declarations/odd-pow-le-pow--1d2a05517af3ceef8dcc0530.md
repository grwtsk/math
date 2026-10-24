# Odd.pow_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af48d60f-1eab-f603-aefe-de53a7c84d1f",
  "kind": "lemma",
  "lexical_name": "Odd.pow_le_pow",
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
  "slug": "odd-pow-le-pow--1d2a05517af3ceef8dcc0530",
  "source": {
    "blob": "b72ebd539c468facc1c9ac030da8ae9d00747a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 299,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d2a05517af3ceef8dcc05304c7197a981b65c66c75d2f387380214a4414c0c2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af48d60f-1eab-f603-aefe-de53a7c84d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Odd.pow_le_pow {n : ℕ} (hn : Odd n) {a b : R} : a ^ n ≤ b ^ n ↔ a ≤ b :=
  hn.strictMono_pow.le_iff_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72ebd539c468facc1c9ac030da8ae9d00747a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

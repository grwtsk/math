# _root_.zsmul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9020673-b515-fe49-1780-18427b5cdb16",
  "kind": "lemma",
  "lexical_name": "_root_.zsmul_eq_mul",
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
  "slug": "root-zsmul-eq-mul--a6022ffefa8b116550b2eb95",
  "source": {
    "blob": "e76e5b8ad639472811bee0299f2ece967c6143bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6022ffefa8b116550b2eb95995f39f19bb93441970d2cc46257a3c6ade56b35",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9020673-b515-fe49-1780-18427b5cdb16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.zsmul_eq_mul (a : α) : ∀ n : ℤ, n • a = n * a
  | (n : ℕ) => by rw [natCast_zsmul, nsmul_eq_mul, Int.cast_natCast]
  | -[n+1] => by simp [Nat.cast_succ, neg_add_rev, Int.cast_negSucc, add_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76e5b8ad639472811bee0299f2ece967c6143bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

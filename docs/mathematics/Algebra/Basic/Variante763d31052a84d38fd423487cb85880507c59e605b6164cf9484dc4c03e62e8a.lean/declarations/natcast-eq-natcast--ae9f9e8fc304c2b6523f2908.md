# natCast_eq_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72b3ec682c56d747a0194d7e5f478cca49ff91c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff72d802-b55f-cd7b-d9ed-1579229c7538",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d5eed0a-887a-693d-9612-fa3388d63b1c",
  "kind": "lemma",
  "lexical_name": "natCast_eq_natCast",
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
  "slug": "natcast-eq-natcast--ae9f9e8fc304c2b6523f2908",
  "source": {
    "blob": "72b3ec682c56d747a0194d7e5f478cca49ff91c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9f9e8fc304c2b6523f2908346d3e37d6473b40f4ceb902df99db385100c46b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d5eed0a-887a-693d-9612-fa3388d63b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natCast_eq_natCast : (a : R) = b ↔ a ≡ b [MOD p] := by
  wlog hle : a ≤ b
  · rw [eq_comm, this R p (le_of_not_le hle), Nat.ModEq.comm]
  rw [Nat.modEq_iff_dvd' hle, ← cast_eq_zero_iff R p (b - a),
    ← add_right_cancel_iff (G := R) (a := a) (b := b - a), zero_add, ← Nat.cast_add,
    Nat.sub_add_cancel hle, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b3ec682c56d747a0194d7e5f478cca49ff91c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

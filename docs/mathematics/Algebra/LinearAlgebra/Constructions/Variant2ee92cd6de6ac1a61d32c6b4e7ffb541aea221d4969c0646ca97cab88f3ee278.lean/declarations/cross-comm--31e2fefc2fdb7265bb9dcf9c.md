# cross_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ffcb987-29fd-312f-e1f8-51d6e81bbf1e",
  "kind": "lemma",
  "lexical_name": "cross_comm",
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
  "slug": "cross-comm--31e2fefc2fdb7265bb9dcf9c",
  "source": {
    "blob": "398b0d071eedc0db6c3a1af2df2846d905d1ec2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e2fefc2fdb7265bb9dcf9cff17555f20479c7097c40a05895a763ae8d3126e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ffcb987-29fd-312f-e1f8-51d6e81bbf1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cross_comm (v w : ℙ F (Fin 3 → F)) : cross v w = cross w v := by
  rcases eq_or_ne v w with rfl | h
  · rfl
  · induction v with | h v hv =>
    induction w with | h w hw =>
    rw [cross_mk_of_ne hv hw h, cross_mk_of_ne hw hv h.symm, mk_eq_mk_iff_crossProduct_eq_zero,
      ← cross_anticomm v w, map_neg, _root_.cross_self, neg_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398b0d071eedc0db6c3a1af2df2846d905d1ec2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

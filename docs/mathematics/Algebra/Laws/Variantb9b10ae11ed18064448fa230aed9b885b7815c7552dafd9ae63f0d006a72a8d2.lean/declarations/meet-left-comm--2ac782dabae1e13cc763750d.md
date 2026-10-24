# meet_left_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3200863e-992f-8876-3b2f-5c2ba6ec33c4",
  "kind": "theorem",
  "lexical_name": "meet_left_comm",
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
  "slug": "meet-left-comm--2ac782dabae1e13cc763750d",
  "source": {
    "blob": "3b61a07a1817700190cb685e61fee3f1cdd578c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac782dabae1e13cc763750d97961c93af8ca678975234a97a7f2963ac60211d",
  "verification": {
    "reference": "docs/verification/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3200863e-992f-8876-3b2f-5c2ba6ec33c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meet_left_comm (a b c : B) :
    meet a (meet b c) = meet b (meet a c) := by
  calc
    meet a (meet b c) = meet (meet a b) c :=
      meet_assoc a b c
    _ = meet (meet b a) c := by
      rw [meet_comm a b]
    _ = meet b (meet a c) :=
      (meet_assoc b a c).symm

/-- Complements are unique in a complemented distributive lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b61a07a1817700190cb685e61fee3f1cdd578c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# not_isUnit_of_degree_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8029323-2423-a9e1-d1cc-b7aa7dd8875e",
  "kind": "lemma",
  "lexical_name": "not_isUnit_of_degree_pos",
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
  "slug": "not-isunit-of-degree-pos--9e474d0130f81f88648bb9fd",
  "source": {
    "blob": "ad7ddf5d5c3b67d177b28854eaa0603ed700e4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e474d0130f81f88648bb9fd7fb38c8a5f7d37dfa0911593a5fd2607f31e0661",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8029323-2423-a9e1-d1cc-b7aa7dd8875e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isUnit_of_degree_pos (p : R[X]) (hpl : 0 < p.degree) : ¬ IsUnit p := by
  cases subsingleton_or_nontrivial R
  · simp [Subsingleton.elim p 0] at hpl
  intro h
  simp [degree_eq_zero_of_isUnit h] at hpl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7ddf5d5c3b67d177b28854eaa0603ed700e4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# reverse_comp_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:251fdbfd-5792-e68b-25c1-335f0878280a",
  "kind": "theorem",
  "lexical_name": "reverse_comp_reverse",
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
  "slug": "reverse-comp-reverse--60eea4ea9ce5a198a74ad039",
  "source": {
    "blob": "662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60eea4ea9ce5a198a74ad03911c4c0d9c26877ce8bd0b762fae44c2e9df32554",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251fdbfd-5792-e68b-25c1-335f0878280a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_comp_reverse :
    reverse.comp reverse = (LinearMap.id : _ →ₗ[R] CliffordAlgebra Q) := by
  ext m
  simp only [LinearMap.id_apply, LinearMap.comp_apply]
  induction m using CliffordAlgebra.induction
  -- simp can close these goals, but is slow
  case h_grade0 => rw [reverse.commutes, reverse.commutes]
  case h_grade1 => rw [reverse_ι, reverse_ι]
  case h_mul a b ha hb => rw [reverse.map_mul, reverse.map_mul, ha, hb]
  case h_add a b ha hb => rw [reverse.map_add, reverse.map_add, ha, hb]
#align clifford_algebra.reverse_comp_reverse CliffordAlgebra.reverse_comp_reverse

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

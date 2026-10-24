# distrib_three_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa6d7efb3d02e840335c93d411d92a3acacedef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffffce727b20ff163d6c0e6091be68af7832152ad950fb0fc34b6d7023f12c4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5562eff-cbab-8cc9-9dbe-d0729bd01bb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f47887f-b5f0-a57c-7d0a-5d47458dd562",
  "kind": "theorem",
  "lexical_name": "distrib_three_right",
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
  "slug": "distrib-three-right--d69acf5a2b80a929a79a595b",
  "source": {
    "blob": "daa6d7efb3d02e840335c93d411d92a3acacedef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Algebra/Defs/Variantffffce727b20ff163d6c0e6091be68af7832152ad950fb0fc34b6d7023f12c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d69acf5a2b80a929a79a595bf0f77f63072060aef225ea1072e10bca4426c14f",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantffffce727b20ff163d6c0e6091be68af7832152ad950fb0fc34b6d7023f12c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f47887f-b5f0-a57c-7d0a-5d47458dd562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distrib_three_right [Mul R] [Add R] [RightDistribClass R] (a b c d : R) :
    (a + b + c) * d = a * d + b * d + c * d := by simp [right_distrib]

/-!
### Classes of semirings and rings

We make sure that the canonical path from `NonAssocSemiring` to `Ring` passes through `Semiring`,
as this is a path which is followed all the time in linear algebra where the defining semilinear map
`σ : R →+* S` depends on the `NonAssocSemiring` structure of `R` and `S` while the module
definition depends on the `Semiring` structure.

It is not currently possible to adjust priorities by hand (see https://github.com/leanprover/lean4/issues/2115). Instead, the last
declared instance is used, so we make sure that `Semiring` is declared after `NonAssocRing`, so
that `Semiring -> NonAssocSemiring` is tried before `NonAssocRing -> NonAssocSemiring`.
TODO: clean this once https://github.com/leanprover/lean4/issues/2115 is fixed
-/

/-- A not-necessarily-unital, not-necessarily-associative semiring. See `CommutatorRing` and the
  documentation thereof in case you need a `NonUnitalNonAssocSemiring` instance on a Lie ring
  or a Lie algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantffffce727b20ff163d6c0e6091be68af7832152ad950fb0fc34b6d7023f12c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantffffce727b20ff163d6c0e6091be68af7832152ad950fb0fc34b6d7023f12c4a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa6d7efb3d02e840335c93d411d92a3acacedef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

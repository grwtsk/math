# LawfulEqOrd.compare_beq_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b48fe812-daa1-4520-fa8e-c5b41fff28cf",
  "kind": "theorem",
  "lexical_name": "LawfulEqOrd.compare_beq_iff_eq",
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
  "slug": "lawfuleqord-compare-beq-iff-eq--359a36844d67466e373e5a49",
  "source": {
    "blob": "a0e7b9a32e871925e95577cb730807e430f05f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359a36844d67466e373e5a49554e2252ea5c13b26c8c6f95ded2a6c852c2d150",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b48fe812-daa1-4520-fa8e-c5b41fff28cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulEqOrd.compare_beq_iff_eq [Ord α] [LawfulEqOrd α] {a b : α} :
    compare a b == .eq ↔ a = b :=
  LawfulEqCmp.compare_beq_iff_eq

export LawfulEqOrd (compare_eq_iff_eq compare_beq_iff_eq)

end LawfulEq

section LawfulBEq

/--
A typeclass for comparison functions satisfying `cmp a b = .eq` if and only if the boolean equality
`a == b` holds.

This typeclass distinguishes itself from `LawfulEqCmp` by using boolean equality (`==`) instead of
logical equality (`=`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e7b9a32e871925e95577cb730807e430f05f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

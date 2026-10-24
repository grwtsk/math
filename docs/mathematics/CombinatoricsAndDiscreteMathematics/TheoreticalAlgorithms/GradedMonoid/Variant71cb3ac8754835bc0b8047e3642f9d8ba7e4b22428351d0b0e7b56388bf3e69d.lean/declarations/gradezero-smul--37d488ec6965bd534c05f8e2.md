# GradeZero.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a42c272a2a31046fd085b86ae286ad77a3c326d784cb631db6f01b35e983a7e3",
  "kind": "instance",
  "lexical_name": "GradeZero.smul",
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
  "slug": "gradezero-smul--37d488ec6965bd534c05f8e2",
  "source": {
    "blob": "ea7a59740717ca52c48cfb2ca23b8bac6485b01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37d488ec6965bd534c05f8e2a0260c1f3703d5381f2f1a0d0a699fb5d5433419",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a42c272a2a31046fd085b86ae286ad77a3c326d784cb631db6f01b35e983a7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance GradeZero.smul (i : ι) : SMul (A 0) (A i)
    where smul x y := @Eq.rec ι (0+i) (fun a _ => A a) (GMul.mul x y) i (zero_add i)
#align graded_monoid.grade_zero.has_smul GradedMonoid.GradeZero.smul

/-- `(*) : A 0 → A 0 → A 0` is the value provided in `GradedMonoid.GMul.mul`, composed with
an `Eq.rec` to turn `A (0 + 0)` into `A 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea7a59740717ca52c48cfb2ca23b8bac6485b01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

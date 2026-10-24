# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Single.Varianta98405b4731424d212a9122d2b293ac3739bc58f34d452c281c3ef53243b3693.AddEquiv.finsuppUnique_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1456558f-6b72-6d50-f93d-dded68faa672",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Single.Varianta98405b4731424d212a9122d2b293ac3739bc58f34d452c281c3ef53243b3693.AddEquiv.finsuppUnique_symm",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-single-varianta98405b473--7aefe2f336d29ec8d2036bb0",
  "source": {
    "blob": "6a619a37cb40a85e38f5c63f95a445504d234752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 546,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aefe2f336d29ec8d2036bb0901bcb32a8bb1976617a4a94e9052b669f692545",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1456558f-6b72-6d50-f93d-dded68faa672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Single.Varianta98405b4731424d212a9122d2b293ac3739bc58f34d452c281c3ef53243b3693.AddEquiv.finsuppUnique_symm {M : Type*} [AddZeroClass M] (d : M) :
    AddEquiv.finsuppUnique.symm d = single () d := by
  rw [Finsupp.unique_single (AddEquiv.finsuppUnique.symm d), Finsupp.unique_single_eq_iff]
  simp [AddEquiv.finsuppUnique]

/-- `Finsupp.single` as an `AddMonoidHom`.

See `Finsupp.lsingle` in `Mathlib/LinearAlgebra/Finsupp/Defs.lean` for the stronger version as a
linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a619a37cb40a85e38f5c63f95a445504d234752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

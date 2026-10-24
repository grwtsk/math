# isPretransitive_iff_orbit_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de09ac00-8c68-c3df-4aba-5b621419cef6",
  "kind": "theorem",
  "lexical_name": "isPretransitive_iff_orbit_eq_univ",
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
  "slug": "ispretransitive-iff-orbit-eq-univ--73c0970afbb56d419745ead4",
  "source": {
    "blob": "769cfe7b2aebb4f6159f4653097af35c8bd45f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73c0970afbb56d419745ead4687499f2d5ac8464d9fe892aaf35619385556d89",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de09ac00-8c68-c3df-4aba-5b621419cef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPretransitive_iff_orbit_eq_univ (a : X) :
    IsPretransitive G X ↔ orbit G a = .univ := by
  rw [isPretransitive_iff_base a, Set.ext_iff]
  apply forall_congr'
  intro x
  simp_rw [Set.mem_univ, iff_true, mem_orbit_iff]

variable {M N α β : Type*} [Monoid M] [Monoid N] [MulAction M α] [MulAction N β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769cfe7b2aebb4f6159f4653097af35c8bd45f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

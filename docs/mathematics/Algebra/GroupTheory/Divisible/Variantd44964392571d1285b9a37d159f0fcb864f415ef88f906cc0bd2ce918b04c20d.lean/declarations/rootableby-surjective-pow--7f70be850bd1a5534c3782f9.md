# RootableBy.surjective_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a716fd2-b553-05c5-7e85-f29e9e64ef7d",
  "kind": "theorem",
  "lexical_name": "RootableBy.surjective_pow",
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
  "slug": "rootableby-surjective-pow--7f70be850bd1a5534c3782f9",
  "source": {
    "blob": "1634643b367c7a5681d13e9edbbc179bc14e7590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f70be850bd1a5534c3782f9f1c0e8c81340d00b548db8f875b386c91545ca25",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a716fd2-b553-05c5-7e85-f29e9e64ef7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RootableBy.surjective_pow [RootableBy A α] {n : α} (hn : n ≠ 0) :
    Function.Surjective fun a : A => a ^ n := fun x =>
  ⟨RootableBy.root x n, RootableBy.root_cancel _ hn⟩

@[deprecated (since := "2026-04-19")] alias pow_left_surj_of_rootableBy :=
  RootableBy.surjective_pow

@[deprecated (since := "2026-04-19")] alias smul_right_surj_of_divisibleBy :=
  DivisibleBy.surjective_smul

/--
A `Monoid A` is `α`-rootable iff the `pow _ n` function is surjective, i.e. the constructive version
implies the textbook approach.
-/
@[to_additive (attr := instance_reducible) divisibleByOfSMulRightSurj
  /-- An `AddMonoid A` is `α`-divisible iff `n • _` is a surjective function, i.e. the
  constructive version implies the textbook approach. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1634643b367c7a5681d13e9edbbc179bc14e7590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

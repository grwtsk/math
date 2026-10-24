# pow_left_surj_of_rootableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b889031-ec31-eaef-aaa3-26defd1925a2",
  "kind": "theorem",
  "lexical_name": "pow_left_surj_of_rootableBy",
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
  "slug": "pow-left-surj-of-rootableby--b00e7de8927601cfbfce8317",
  "source": {
    "blob": "d8e3985f4c97faa4d687537bc9ea5149b7caf4e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b00e7de8927601cfbfce831751de1455b6d4209920fa3734dc2622e9cdcf1d34",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b889031-ec31-eaef-aaa3-26defd1925a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_left_surj_of_rootableBy [RootableBy A α] {n : α} (hn : n ≠ 0) :
    Function.Surjective (fun a => a ^ n : A → A) := fun x =>
  ⟨RootableBy.root x n, RootableBy.root_cancel _ hn⟩

/--
A `Monoid A` is `α`-rootable iff the `pow _ n` function is surjective, i.e. the constructive version
implies the textbook approach.
-/
@[to_additive divisibleByOfSMulRightSurj
      "An `AddMonoid A` is `α`-divisible iff `n • _` is a surjective function, i.e. the constructive
      version implies the textbook approach."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e3985f4c97faa4d687537bc9ea5149b7caf4e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

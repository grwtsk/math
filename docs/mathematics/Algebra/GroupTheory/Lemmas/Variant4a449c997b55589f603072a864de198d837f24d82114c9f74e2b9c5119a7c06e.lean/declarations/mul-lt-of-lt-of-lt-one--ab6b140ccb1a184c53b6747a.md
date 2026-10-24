# mul_lt_of_lt_of_lt_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9584337874155f8b0b3d61930a857873f57f9622",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 586,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d5c9754-1276-ab86-a330-d841c3850dab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5e674b5-5385-8a1d-c5e8-69e7d49b535e",
  "kind": "theorem",
  "lexical_name": "mul_lt_of_lt_of_lt_one'",
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
  "slug": "mul-lt-of-lt-of-lt-one--ab6b140ccb1a184c53b6747a",
  "source": {
    "blob": "9584337874155f8b0b3d61930a857873f57f9622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 586,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab6b140ccb1a184c53b6747a48db1c0966f7176f1c626a882c5395297a05dec9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e674b5-5385-8a1d-c5e8-69e7d49b535e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_lt_of_lt_of_lt_one' [CovariantClass α α (· * ·) (· ≤ ·)] {a b c : α} (hbc : b < c)
    (ha : a < 1) :
    b * a < c :=
  mul_lt_of_lt_of_le_one hbc ha.le
#align mul_lt_of_lt_of_lt_one' mul_lt_of_lt_of_lt_one'
#align add_lt_of_lt_of_neg' add_lt_of_lt_of_neg'

/-- Assumes left covariance.
The lemma assuming right covariance is `Right.mul_le_one`. -/
@[to_additive "Assumes left covariance.
The lemma assuming right covariance is `Right.add_nonpos`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9584337874155f8b0b3d61930a857873f57f9622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# zero_pow_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335ef50464487b5763d4ad885d55d83b00964f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91a75f9f-1fd4-cbfc-32f8-522a097bbc10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef1adfd5-9159-e384-7e9b-9873ef069a7e",
  "kind": "lemma",
  "lexical_name": "zero_pow_le_one",
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
  "slug": "zero-pow-le-one--a953f9a1ced08b0ef10f1c8d",
  "source": {
    "blob": "335ef50464487b5763d4ad885d55d83b00964f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 418,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a953f9a1ced08b0ef10f1c8d9e30368b03253d46ce113c3d9ae2204b04f15899",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1adfd5-9159-e384-7e9b-9873ef069a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_pow_le_one [ZeroLEOneClass M₀] : ∀ n : ℕ, (0 : M₀) ^ n ≤ 1
  | 0 => (pow_zero _).le
  | n + 1 => by rw [zero_pow n.succ_ne_zero]; exact zero_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335ef50464487b5763d4ad885d55d83b00964f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

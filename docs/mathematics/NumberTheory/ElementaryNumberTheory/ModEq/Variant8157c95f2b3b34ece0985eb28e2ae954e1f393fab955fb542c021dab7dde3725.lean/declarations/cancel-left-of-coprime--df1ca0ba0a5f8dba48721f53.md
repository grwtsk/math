# cancel_left_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d3ea57161f5eb831ca0e38d066bf613512b69d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:862701f6-62e4-f47e-6392-85b6d4f49b32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f70eecb7-5657-0c24-19f5-c4a3eb9b9060",
  "kind": "lemma",
  "lexical_name": "cancel_left_of_coprime",
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
  "slug": "cancel-left-of-coprime--df1ca0ba0a5f8dba48721f53",
  "source": {
    "blob": "2d3ea57161f5eb831ca0e38d066bf613512b69d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df1ca0ba0a5f8dba48721f538956a086070d4a938e7649d36059b6a5368b7fd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70eecb7-5657-0c24-19f5-c4a3eb9b9060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cancel_left_of_coprime (hmc : gcd m c = 1) (h : c * a ≡ c * b [MOD m]) : a ≡ b [MOD m] := by
  rcases m.eq_zero_or_pos with (rfl | hm)
  · simp only [gcd_zero_left] at hmc
    simp only [gcd_zero_left, hmc, one_mul, modEq_zero_iff] at h
    subst h
    rfl
  simpa [hmc] using h.cancel_left_div_gcd hm

/-- A common factor that's coprime with the modulus can be cancelled from a `ModEq` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d3ea57161f5eb831ca0e38d066bf613512b69d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

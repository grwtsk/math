# spanNorm_mul_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc1797c0-15c1-f9c1-3486-fe67a49bb197",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02c199a2-f005-a1a9-2c29-e7cb7615570c",
  "kind": "theorem",
  "lexical_name": "spanNorm_mul_of_field",
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
  "slug": "spannorm-mul-of-field--3b08be964704552cde42b974",
  "source": {
    "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 574,
    "path": "GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b08be964704552cde42b974ea7fe242a7a6f98f17e46680c69be8a5c5b9cf43",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c199a2-f005-a1a9-2c29-e7cb7615570c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanNorm_mul_of_field {K : Type*} [Field K] [Algebra K S] [IsDomain S] [Module.Finite K S]
    (I J : Ideal S) : spanNorm K (I * J) = spanNorm K I * spanNorm K J :=
  spanNorm_mul_of_bot_or_top K eq_bot_or_top I J
#align ideal.span_norm_mul_of_field Ideal.spanNorm_mul_of_field

variable [IsDomain R] [IsDomain S] [IsDedekindDomain R] [IsDedekindDomain S]

variable [Module.Finite R S] [Module.Free R S]

/-- Multiplicativity of `Ideal.spanNorm`. simp-normal form is `map_mul (Ideal.relNorm R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c99b49893a1e688ace8d85303eb753632bea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

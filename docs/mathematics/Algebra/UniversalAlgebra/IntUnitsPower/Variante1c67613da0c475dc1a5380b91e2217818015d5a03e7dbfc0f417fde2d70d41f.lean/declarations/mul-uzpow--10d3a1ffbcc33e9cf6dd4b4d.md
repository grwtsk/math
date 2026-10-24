# mul_uzpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a52ba95fb1707b7a9c9f8254686656104946f76a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5da4c88-d27c-9f6f-8475-b5717fa5f879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72517b11-bb0b-6ed8-9073-376c0a5b0cec",
  "kind": "lemma",
  "lexical_name": "mul_uzpow",
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
  "slug": "mul-uzpow--10d3a1ffbcc33e9cf6dd4b4d",
  "source": {
    "blob": "a52ba95fb1707b7a9c9f8254686656104946f76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 85,
    "path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10d3a1ffbcc33e9cf6dd4b4d22a3a3ccf96a0ca0c630f22faa56dea48099e0f4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72517b11-bb0b-6ed8-9073-376c0a5b0cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_uzpow (s₁ s₂ : ℤˣ) (x : R) : (s₁ * s₂) ^ x = s₁ ^ x * s₂ ^ x :=
  Additive.ofMul.injective <| smul_add x (Additive.ofMul s₁) (Additive.ofMul s₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52ba95fb1707b7a9c9f8254686656104946f76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

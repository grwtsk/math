# LSeries.convolution_one_eq_convolution_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e53064a-5799-e385-ec3a-262153e42b07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a952cdc2-0fad-d9d7-9a9f-247d7390b98d",
  "kind": "lemma",
  "lexical_name": "LSeries.convolution_one_eq_convolution_zeta",
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
  "slug": "lseries-convolution-one-eq-convolution-zeta--d827143d7d70669a86f9f971",
  "source": {
    "blob": "ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d827143d7d70669a86f9f971dbe47437cca41b6ead1ffe190327c09c3e4ddf0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a952cdc2-0fad-d9d7-9a9f-247d7390b98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.convolution_one_eq_convolution_zeta {R : Type*} [Semiring R] (f : ℕ → R) :
    f ⍟ (1 : ℕ → R) = f ⍟ ((ArithmeticFunction.zeta ·) : ℕ → R) :=
  convolution_congr (fun _ ↦ rfl) ArithmeticFunction.const_one_eq_zeta

/-- `χ₁` is (local) notation for the (necessarily trivial) Dirichlet character modulo `1`. -/
local notation (name := Dchar_one) "χ₁" => (1 : DirichletCharacter ℂ 1)

namespace DirichletCharacter

open ArithmeticFunction in
/-- The arithmetic function associated to a Dirichlet character is multiplicative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# coe_charFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bcb85d87eb5e547a53f1a367a5137062d48982f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3c70d6d72d97e897dc84eda4675e4ca4e5c40909deca994d8ff78e389701e42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed940d69-9b00-bd90-dad5-293672cb3187",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc5f39b5-0c5b-bf3e-3c20-62d100daca72",
  "kind": "theorem",
  "lexical_name": "coe_charFn",
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
  "slug": "coe-charfn--bdbf4fa336c61ea2c3a83d05",
  "source": {
    "blob": "4bcb85d87eb5e547a53f1a367a5137062d48982f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantc3c70d6d72d97e897dc84eda4675e4ca4e5c40909deca994d8ff78e389701e42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdbf4fa336c61ea2c3a83d05eeb98ba37c97af84a4c57dca4078738529da30c8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Algebra/Variantc3c70d6d72d97e897dc84eda4675e4ca4e5c40909deca994d8ff78e389701e42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc5f39b5-0c5b-bf3e-3c20-62d100daca72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_charFn (hU : IsClopen U) : (charFn Y hU : X → Y) = Set.indicator U 1 :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Algebra/Variantc3c70d6d72d97e897dc84eda4675e4ca4e5c40909deca994d8ff78e389701e42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Algebra/Variantc3c70d6d72d97e897dc84eda4675e4ca4e5c40909deca994d8ff78e389701e42.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bcb85d87eb5e547a53f1a367a5137062d48982f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

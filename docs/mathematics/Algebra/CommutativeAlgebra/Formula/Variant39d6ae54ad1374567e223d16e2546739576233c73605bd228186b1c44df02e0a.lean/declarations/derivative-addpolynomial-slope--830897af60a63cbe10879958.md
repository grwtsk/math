# derivative_addPolynomial_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6716181c817363552d3c7a08e54663163a935b5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef03887-0b07-b4dd-4a71-08c3f314654a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac72ca9e-de85-f173-f8e9-a80c6f8dd2f6",
  "kind": "lemma",
  "lexical_name": "derivative_addPolynomial_slope",
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
  "slug": "derivative-addpolynomial-slope--830897af60a63cbe10879958",
  "source": {
    "blob": "6716181c817363552d3c7a08e54663163a935b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 290,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:830897af60a63cbe108799587ad556dcfce2ddb6e13d0a2eb3c0af936f4398e4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac72ca9e-de85-f173-f8e9-a80c6f8dd2f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma derivative_addPolynomial_slope {x₁ x₂ y₁ y₂ : F} (h₁ : W.Equation x₁ y₁)
    (h₂ : W.Equation x₂ y₂) (hxy : ¬(x₁ = x₂ ∧ y₁ = W.negY x₂ y₂)) :
    derivative (W.addPolynomial x₁ y₁ <| W.slope x₁ x₂ y₁ y₂) =
      -((X - C x₁) * (X - C x₂) + (X - C x₁) * (X - C (W.addX x₁ x₂ <| W.slope x₁ x₂ y₁ y₂)) +
          (X - C x₂) * (X - C (W.addX x₁ x₂ <| W.slope x₁ x₂ y₁ y₂))) := by
  rw [addPolynomial_slope h₁ h₂ hxy]
  derivative_simp
  ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716181c817363552d3c7a08e54663163a935b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

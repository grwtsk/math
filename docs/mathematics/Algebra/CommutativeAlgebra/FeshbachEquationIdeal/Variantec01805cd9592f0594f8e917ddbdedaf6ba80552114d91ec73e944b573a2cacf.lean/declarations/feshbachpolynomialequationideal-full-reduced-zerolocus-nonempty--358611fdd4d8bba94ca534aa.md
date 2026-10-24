# feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35d1487b-1e66-d643-48a6-c150425ca850",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:643289d9-e48a-d191-17e1-8c7ed22b8c9f",
  "kind": "theorem",
  "lexical_name": "feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty",
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
  "slug": "feshbachpolynomialequationideal-full-reduced-zerolocus-nonempty--358611fdd4d8bba94ca534aa",
  "source": {
    "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 280,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358611fdd4d8bba94ca534aa5d277d80e7d8f609bf9c6c0a15aba2a926bd3bd9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:643289d9-e48a-d191-17e1-8c7ed22b8c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
    [Fintype ι] [DecidableEq κ]
    (A : Matrix ι ι K) (U : Matrix ι κ K) (C : Matrix κ ι K)
    (B : Matrix κ κ K) [Invertible B] :
    (MvPolynomial.zeroLocus K (feshbachPolynomialEquationIdeal A U C B)).Nonempty ∧
      (MvPolynomial.zeroLocus K (reducedFeshbachPolynomialEquationIdeal A U C B)).Nonempty := by
  have hfull := feshbachPolynomialEquationIdeal_origin_mem_zeroLocus A U C B
  have heq : feshbachPolynomialEquationIdeal A U C B =
      reducedFeshbachPolynomialEquationIdeal A U C B :=
    feshbach_polynomial_equationIdeal_eq A U C B
  exact ⟨⟨0, hfull⟩, ⟨0, heq ▸ hfull⟩⟩

/-- At the faithful nondegenerate finite scope (both the eliminated block and
the Schur block invertible), the full polynomial equation ideal is the complete
coordinate ideal. No claim of nondegeneracy is inferred from elimination. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

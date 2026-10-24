# Monics.map_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1205fd25f107722b52e6c2bd815bfe5b6d31d440",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:950437da-9d80-e8a4-69f6-b79a3ed0edb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c194f901-37db-fcd9-7d1a-51c19974131b",
  "kind": "theorem",
  "lexical_name": "Monics.map_eq_prod",
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
  "slug": "monics-map-eq-prod--76dd8be5252d24a1785a9f49",
  "source": {
    "blob": "1205fd25f107722b52e6c2bd815bfe5b6d31d440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76dd8be5252d24a1785a9f49fda8ff70c18608c16d0d157f069021046d18a311",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c194f901-37db-fcd9-7d1a-51c19974131b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monics.map_eq_prod {f : Monics k} :
    f.1.map (algebraMap k (AlgebraicClosure k)) =
      ∏ i, map (Ideal.Quotient.mk <| maxIdeal k) (X - C (MvPolynomial.X ⟨f, i⟩)) := by
  ext
  dsimp [AlgebraicClosure]
  rw [← Ideal.Quotient.mk_comp_algebraMap, ← map_map, ← Polynomial.map_prod, ← sub_eq_zero,
    ← coeff_sub, ← Polynomial.map_sub, ← subProdXSubC, coeff_map, Ideal.Quotient.eq_zero_iff_mem]
  refine le_maxIdeal _ (Ideal.subset_span ⟨⟨f, _⟩, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1205fd25f107722b52e6c2bd815bfe5b6d31d440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# card_supp_le_succ_natDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8946d97e-3b30-e52a-e189-ba9fcfc2f5a8",
  "kind": "theorem",
  "lexical_name": "card_supp_le_succ_natDegree",
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
  "slug": "card-supp-le-succ-natdegree--3089eeb31c6969d87d9a62bd",
  "source": {
    "blob": "1856306fde1b5c92553dbbde16889b97cf153b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Support/Variantc1e4d99b8eaf20d96451b9721231bf8652f0ae24898f64a12f4bd5a42900c460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3089eeb31c6969d87d9a62bda44d91a2a42b18c7c422ec0da219528cc5231644",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Support/Variantc1e4d99b8eaf20d96451b9721231bf8652f0ae24898f64a12f4bd5a42900c460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8946d97e-3b30-e52a-e189-ba9fcfc2f5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_supp_le_succ_natDegree (p : R[X]) : #p.support ≤ p.natDegree + 1 := by
  rw [← Finset.card_range (p.natDegree + 1)]
  exact Finset.card_le_card supp_subset_range_natDegree_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Support/Variantc1e4d99b8eaf20d96451b9721231bf8652f0ae24898f64a12f4bd5a42900c460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Support/Variantc1e4d99b8eaf20d96451b9721231bf8652f0ae24898f64a12f4bd5a42900c460.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1856306fde1b5c92553dbbde16889b97cf153b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

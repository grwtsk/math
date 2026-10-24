# isNilpotent_reverse_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:244a529e-eea2-1d84-e749-637a78ff346b",
  "kind": "lemma",
  "lexical_name": "isNilpotent_reverse_iff",
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
  "slug": "isnilpotent-reverse-iff--a87b911b3c00e0680dfb3b9a",
  "source": {
    "blob": "77b3f1e75e121d841728b7748666e1271a88e951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87b911b3c00e0680dfb3b9a9dab7810015f5aef16bdd491a7d9f1c989fb0ad0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:244a529e-eea2-1d84-e749-637a78ff346b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isNilpotent_reverse_iff :
    IsNilpotent P.reverse ↔ IsNilpotent P := by
  simp only [Polynomial.isNilpotent_iff, coeff_reverse]
  refine' ⟨fun h i ↦ _, fun h i ↦ _⟩ <;> cases' le_or_lt i P.natDegree with hi hi
  · simpa [tsub_tsub_cancel_of_le hi] using h (P.natDegree - i)
  · simp [coeff_eq_zero_of_natDegree_lt hi]
  · simpa only [hi, revAt_le] using h (P.natDegree - i)
  · simpa only [revAt_eq_self_of_lt hi] using h i

/-- Let `P` be a polynomial over `R`. If its constant term is a unit and its other coefficients are
nilpotent, then `P` is a unit.

See also `Polynomial.isUnit_iff_coeff_isUnit_isNilpotent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77b3f1e75e121d841728b7748666e1271a88e951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

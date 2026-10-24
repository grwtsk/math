# completion_Y_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb617195-3919-8ffb-c95f-c6f48360d770",
  "kind": "theorem",
  "lexical_name": "completion_Y_relation",
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
  "slug": "completion-y-relation--508aa5585aa695d86e599313",
  "source": {
    "blob": "89bd73be47e037f7231ba1b13900da3fa28f79ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:508aa5585aa695d86e599313fde28aa56ee253baf9baa6b558848d79439f2f93",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb617195-3919-8ffb-c95f-c6f48360d770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_Y_relation (a b l : R) (hl : a * b * l = 1) :
    completionEquiv a b l hl
        (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1))) *
      coordinateImage a b a (FreyTorsionOpen.affineX a b) ^ 2 =
    coordinateImage a b a (algebraMap R (Coordinate a b) (a*b)) *
      coordinateImage a b a (coordinateMap a b (MvPolynomial.X 1)) := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b a n (_ * _) = canonicalProjection a b a n (_ * _)
  simp only [map_mul, map_pow, completion_projection, coordinate_projection]
  apply (equivA a b l hl n).injective
  rw [map_mul, map_pow, map_mul, localized_square, equivB_mk, equivA_mk,
    equivA_mk, equivA_mk, FreyTorsionOpenJets.pullbackBA_mk]
  change Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n)
      (FreyTorsionOpen.pullback a b l hl (FreyTorsionOpen.y a b)) *
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.x a b) ^ 2 =
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.scalar a b (a*b)) *
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.y a b)
  rw [← map_pow, ← map_mul, ← map_mul]
  apply congrArg (Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n))
  rw [FreyTorsionOpen.pullback_y]
  calc
    _ = FreyTorsionOpen.scalar a b (a*b) * FreyTorsionOpen.y a b *
        (FreyTorsionOpen.x a b * FreyTorsionOpen.invX a b) ^ 2 := by ring
    _ = _ := by rw [FreyTorsionOpen.x_mul_invX, one_pow, mul_one]

/-- An actual inverse at every level reflects congruence, unlike a residue map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bd73be47e037f7231ba1b13900da3fa28f79ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

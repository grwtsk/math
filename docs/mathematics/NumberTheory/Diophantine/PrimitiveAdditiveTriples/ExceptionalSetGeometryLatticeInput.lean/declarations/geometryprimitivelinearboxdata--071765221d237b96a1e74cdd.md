# geometryPrimitiveLinearBoxData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:351a42564ba4b9ccbafb681a874877f35f85c71c5d5037c5cef09a49c2ce2849",
  "kind": "def",
  "lexical_name": "geometryPrimitiveLinearBoxData",
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
  "slug": "geometryprimitivelinearboxdata--071765221d237b96a1e74cdd",
  "source": {
    "blob": "8a0f13e1214c55db86947b1cca5144b955e5dfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:071765221d237b96a1e74cddb5c7d03bea9232e40e1afbf2b2235cb8509fe91a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:351a42564ba4b9ccbafb681a874877f35f85c71c5d5037c5cef09a49c2ce2849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def geometryPrimitiveLinearBoxData
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (hq : q ∈ paperBoxFinset p)
    (linearization :
      PrimitivePositiveGeometryLinearization p q I I' I'') :
    Data := by
  have filtered := Finset.mem_filter.mp hq
  have strictA : ∀ i, PaperDyadic (q.1 i) (p.A i) := filtered.2.1
  have strictB : ∀ i, PaperDyadic (q.2.1 i) (p.B i) := filtered.2.2.1
  have strictC : ∀ i, PaperDyadic (q.2.2 i) (p.C i) := filtered.2.2.2
  have upperA := paperSelectedMonomial_le_geometryUpper I strictA
  have upperB := paperSelectedMonomial_le_geometryUpper I' strictB
  have upperC := paperSelectedMonomial_le_geometryUpper I'' strictC
  exact
    { a := geometryCoefficientA p I q
      b := geometryCoefficientB p I' q
      c := geometryCoefficientC p I'' q
      X := geometrySelectedMonomialUpper I p.A
      Y := geometrySelectedMonomialUpper I' p.B
      Z := geometrySelectedMonomialUpper I'' p.C
      a_pos := linearization.positive.coefficientA_pos
      b_pos := linearization.positive.coefficientB_pos
      c_pos := linearization.positive.coefficientC_pos
      X_pos := lt_of_lt_of_le linearization.positive.variableA_pos upperA
      Y_pos := lt_of_lt_of_le linearization.positive.variableB_pos upperB
      Z_pos := lt_of_lt_of_le linearization.positive.variableC_pos upperC
      coefficientPrimitive := linearization.paperPrimitivity.1 }

/-- The existing selected variables belong to the exact generic finite count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a0f13e1214c55db86947b1cca5144b955e5dfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

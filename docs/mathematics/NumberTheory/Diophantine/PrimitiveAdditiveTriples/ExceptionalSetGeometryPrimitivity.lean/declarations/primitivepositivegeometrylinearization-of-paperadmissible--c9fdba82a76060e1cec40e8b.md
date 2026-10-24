# primitivePositiveGeometryLinearization_of_paperAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf863996-b3c4-7012-7aaa-db2a6c05ffde",
  "kind": "theorem",
  "lexical_name": "primitivePositiveGeometryLinearization_of_paperAdmissible",
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
  "slug": "primitivepositivegeometrylinearization-of-paperadmissible--c9fdba82a76060e1cec40e8b",
  "source": {
    "blob": "e5ff8583109ed0814dd13368901e9eee6f3f8c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 231,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9fdba82a76060e1cec40e8b7df9cd8c74e4d71473910ff4a6cdef1efb8e0d06",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf863996-b3c4-7012-7aaa-db2a6c05ffde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitivePositiveGeometryLinearization_of_paperAdmissible
    {d : ℕ} {lam ε₀ : ℝ} {X : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (admissible : PaperAdmissible lam ε₀ X p)
    (hq : q ∈ paperBoxFinset p) :
    PrimitivePositiveGeometryLinearization p q I I' I'' := by
  have positiveEquation :=
    positiveGeometryLinearization_of_paperAdmissible I I' I''
      admissible hq
  exact
    { positive := positiveEquation.positive
      primitive := geometryPairwisePrimitivity_of_mem_paperBoxFinset
        I I' I'' hq
      equation := positiveEquation.equation }

/-- Three-variable gcd one is weaker than pairwise coprimality; the source
paper uses the former, while the inherited box supplies the latter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ff8583109ed0814dd13368901e9eee6f3f8c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isAlgebraic_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98a82c4d-7ad0-a6cb-0c2d-93e10643975c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c7fa042-044f-6fd4-d5e1-3825d81e5672",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_iff",
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
  "slug": "isalgebraic-iff--ae8b7b3c66a6e9509e775d6b",
  "source": {
    "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8b7b3c66a6e9509e775d6b0bce3cd323692705a5fa207c7e1117d4e1016405",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7fa042-044f-6fd4-d5e1-3825d81e5672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_iff [Algebra A C] [Algebra K C] [IsScalarTower A K C] {x : C} :
    IsAlgebraic A x ↔ IsAlgebraic K x := by
  constructor <;> rintro ⟨p, hp, px⟩
  · refine ⟨p.map (algebraMap A K), fun h => hp (Polynomial.ext fun i => ?_), ?_⟩
    · have : algebraMap A K (p.coeff i) = 0 :=
        _root_.trans (Polynomial.coeff_map _ _).symm (by simp [h])
      exact to_map_eq_zero_iff.mp this
    · exact (Polynomial.aeval_map_algebraMap K _ _).trans px
  · exact
      ⟨integerNormalization _ p, mt integerNormalization_eq_zero_iff.mp hp,
        integerNormalization_aeval_eq_zero _ p px⟩

variable {A K C}

/-- A ring is algebraic over the ring `A` iff it is algebraic over the field of fractions of `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db7410022c05a5b2008f5dcb351677e0954944f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

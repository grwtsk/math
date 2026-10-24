# mul_monomial_mem_coeffsIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42ac0c0c-5d01-2892-ec93-582aa8409e1b",
  "kind": "lemma",
  "lexical_name": "mul_monomial_mem_coeffsIn",
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
  "slug": "mul-monomial-mem-coeffsin--748bb243f84b14deb62d8d83",
  "source": {
    "blob": "d0d47e09a9ebac442d472b1e4aca5dd6045fca98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1019,
    "line": 1011,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748bb243f84b14deb62d8d8322dd0f1d4af022e4a6fa746096f698f52e2f5fbc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ac0c0c-5d01-2892-ec93-582aa8409e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1011–1019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_monomial_mem_coeffsIn : p * monomial i 1 ∈ coeffsIn σ M ↔ p ∈ coeffsIn σ M := by
  simp only [mem_coeffsIn, coeff_mul_monomial']
  constructor
  · rintro hp j
    simpa using hp (j + i)
  · rintro hp i
    split <;> simp [hp]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean#L1011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d47e09a9ebac442d472b1e4aca5dd6045fca98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# unitization_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71440bc8-6505-a0be-f26e-4567c2451ea0",
  "kind": "theorem",
  "lexical_name": "unitization_range",
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
  "slug": "unitization-range--4cc80629e21248ec7154b779",
  "source": {
    "blob": "8238c92c20cd363bae8ded0075bcf82757da3514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 175,
    "path": "GRWTSK/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc80629e21248ec7154b7793ed806381b98748d87e0e8d6dbd67f2e37f05214",
  "verification": {
    "reference": "docs/verification/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71440bc8-6505-a0be-f26e-4567c2451ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitization_range :
    (unitization s).range = subalgebraOfSubsemiring (.closure s) := by
  have := AddSubmonoidClass.nsmulMemClass (S := S)
  rw [unitization, NonUnitalSubalgebra.unitization_range (hSRA := this), Algebra.adjoin_nat]

end NonUnitalSubsemiring

/-! ## Subrings -/

namespace NonUnitalSubring

variable {R S : Type*} [Ring R] [SetLike S R] [hSR : NonUnitalSubringClass S R] (s : S)

/-- The natural `ℤ`-algebra homomorphism from the unitization of a non-unital subring to
its `Subring.closure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unitization/Variantc09a0d45de7e42eb9842ccf3593ab35eef74eeb80f4c5e25025ebb0f851efee8.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8238c92c20cd363bae8ded0075bcf82757da3514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

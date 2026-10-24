# upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d96a5def-64ae-c5fc-5058-797e25c1c68b",
  "kind": "theorem",
  "lexical_name": "upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift",
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
  "slug": "uppershift-mul-lowershift-ne-lowershift-mul-uppershift--3f83ef23a2b10b6f45477473",
  "source": {
    "blob": "981a1cc9fa992da80fbfbda71df863dd1aa8a7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f83ef23a2b10b6f45477473a283522d24dde9dbb034c6eb6567f4eb21d1389e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d96a5def-64ae-c5fc-5058-797e25c1c68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift :
    upperShift * lowerShift ≠ lowerShift * upperShift := by
  intro h
  have hAt := congrArg
    (fun operator : Operator => operator ((1 : ℂ), (0 : ℂ))) h
  have hFirst := congrArg Prod.fst hAt
  have hone : (1 : ℂ) = 0 := by
    simp [upperShift, lowerShift, coordinateOperator, Module.End.mul_apply] at hFirst
  exact one_ne_zero hone

/-- Concrete root. The representation is the identity representation of the full
endomorphism ring, and height is read from the first component of the commutator acting
on the second basis vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981a1cc9fa992da80fbfbda71df863dd1aa8a7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

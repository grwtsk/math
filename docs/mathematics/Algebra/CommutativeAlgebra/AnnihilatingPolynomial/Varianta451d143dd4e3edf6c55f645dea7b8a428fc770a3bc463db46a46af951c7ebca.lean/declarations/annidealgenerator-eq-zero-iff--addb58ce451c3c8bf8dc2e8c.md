# annIdealGenerator_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a575d4b6-b070-9672-be37-8a4ce2c3a4d4",
  "kind": "theorem",
  "lexical_name": "annIdealGenerator_eq_zero_iff",
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
  "slug": "annidealgenerator-eq-zero-iff--addb58ce451c3c8bf8dc2e8c",
  "source": {
    "blob": "4b89c6cde088164859ffa93bc5834fb6d5825d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:addb58ce451c3c8bf8dc2e8cdbd5d98d5f9b2c517d78c2bf8d467f08ef8bd00e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a575d4b6-b070-9672-be37-8a4ce2c3a4d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annIdealGenerator_eq_zero_iff {a : A} : annIdealGenerator 𝕜 a = 0 ↔ annIdeal 𝕜 a = ⊥ := by
  simp only [annIdealGenerator, mul_eq_zero, IsPrincipal.eq_bot_iff_generator_eq_zero,
    Polynomial.C_eq_zero, inv_eq_zero, Polynomial.leadingCoeff_eq_zero, or_self_iff]

end

/-- `annIdealGenerator 𝕜 a` is indeed a generator. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b89c6cde088164859ffa93bc5834fb6d5825d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

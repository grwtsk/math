# gfInv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f6c1c9-cd39-ccb8-49c8-b85d64f682d1",
  "kind": "theorem",
  "lexical_name": "gfInv_mul",
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
  "slug": "gfinv-mul--a609ff8ac1eaf18600167e0c",
  "source": {
    "blob": "e192457e60263498a0a95c65fd2772ff3bd097a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 501,
    "path": "GRWTSK/Algebra/LinearAlgebra/Galois/Variant2aec70eea4d413aeaf514c7594ccd80fb1b303851a5b1de0c7a489c09f13eb7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a609ff8ac1eaf18600167e0c27e1dc8ab400d7da670cceac9cd9de5b275411cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Galois/Variant2aec70eea4d413aeaf514c7594ccd80fb1b303851a5b1de0c7a489c09f13eb7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f6c1c9-cd39-ccb8-49c8-b85d64f682d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gfInv_mul
    (E : BitMatrix.FiniteField.Encoding F m n) {A : BitMatrix m n}
    (hA : A ≠ gfZero E) :
    gfMul E (gfInv E A) A = gfOne E := by
  rw [gfMul_comm]
  exact gfMul_inv E hA

/-! ## Extension multiplication is not pointwise AND -/

/--
For a multi-entry representation, disjoint pointwise supports multiply to zero
under AND but not under the transported field multiplication.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Galois/Variant2aec70eea4d413aeaf514c7594ccd80fb1b303851a5b1de0c7a489c09f13eb7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Galois/Variant2aec70eea4d413aeaf514c7594ccd80fb1b303851a5b1de0c7a489c09f13eb7b.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e192457e60263498a0a95c65fd2772ff3bd097a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

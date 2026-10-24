# ofMatrix_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed2814ac-e9bc-7d55-d309-bdb19629e7df",
  "kind": "theorem",
  "lexical_name": "ofMatrix_matrix",
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
  "slug": "ofmatrix-matrix--9bfc3b588be714af216e68c8",
  "source": {
    "blob": "9bcfac27d3db6afb924485e69be35aa6c20bdcd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 200,
    "path": "GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bfc3b588be714af216e68c85f9cd992453191fa0ce1379989a50402214cb418",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2814ac-e9bc-7d55-d309-bdb19629e7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem ofMatrix_matrix [DecidableEq n] [Nonempty n] (c : RingCon R) :
    ofMatrix (matrix n c) = c := by
  ext x y
  classical
  constructor
  · intro h
    inhabit n
    simpa using h default default default default
  · intro h i j
    rwa [matrix_apply_single]

end NonUnitalNonAssocSemiring

section NonAssocSemiring
variable [NonAssocSemiring R] [Fintype n]
open Matrix

/-- Note that this does not apply to a non-unital ring, with counterexample where the elementwise
congruence relation `!![⊤,⊤;⊤,(· ≡ · [PMOD 4])]` is a ring congruence over
`Matrix (Fin 2) (Fin 2) 2ℤ`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bcfac27d3db6afb924485e69be35aa6c20bdcd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

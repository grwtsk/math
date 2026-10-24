# ContDiffOn.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d3e3d02-dbef-1189-1750-0cbf5dff3037",
  "kind": "theorem",
  "lexical_name": "ContDiffOn.smul",
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
  "slug": "contdiffon-smul--6128f8e4b6862c2fbb0c76cd",
  "source": {
    "blob": "ec6668d33d7a8f386a0414da243e3ff3c5e4dd80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 581,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6128f8e4b6862c2fbb0c76cd83d32eb2e9a2c63edcd03fe27277f828be42c432",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d3e3d02-dbef-1189-1750-0cbf5dff3037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffOn.smul {s : Set E} {f : E → 𝕜'} {g : E → F} (hf : ContDiffOn 𝕜 n f s)
    (hg : ContDiffOn 𝕜 n g s) : ContDiffOn 𝕜 n (f • g) s := fun x hx =>
  (hf x hx).smul (hg x hx)

end SMul

/-! ### Constant scalar multiplication

TODO: generalize results in this section -- if `c` is a unit (or `R` is a group), then one can
drop `ContDiff*` assumptions in some lemmas about `iteratedFDeriv` and `iteratedFDerivWithin`.
-/

section ConstSMul

variable {R A : Type*} [DistribSMul R F] [SMulCommClass 𝕜 R F] [ContinuousConstSMul R F]
  [NormedRing A] [NormedAlgebra 𝕜 A] [Module A F] [IsScalarTower 𝕜 A F] [IsBoundedSMul A F]

/-- Scalar multiplication is smooth (as a function of the vector variable). -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6668d33d7a8f386a0414da243e3ff3c5e4dd80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e3e2f6b8ac0dbe053a430cb79328185ef830aa0d8f49e532ec7d97be83d172",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--78cc23ba0991d128f60c8fcd",
  "source": {
    "blob": "aa73aedb4ac193b41a3f33fd885d99f34e614ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 489,
    "path": "GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78cc23ba0991d128f60c8fcd697489191f8b02ad176a806bf6eed974d22631ed",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e3e2f6b8ac0dbe053a430cb79328185ef830aa0d8f49e532ec7d97be83d172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Algebra R (v.adicCompletionIntegers K) where
  smul r x :=
    ⟨r • (x : v.adicCompletion K), by
      have h :
        (algebraMap R (adicCompletion K v)) r = (algebraMap R K r : adicCompletion K v) := rfl
      rw [Algebra.smul_def]
      refine ValuationSubring.mul_mem _ _ _ ?_ x.2
      rw [h]
      exact coe_algebraMap_mem _ _ v r⟩
  algebraMap :=
  { toFun r :=
      ⟨(algebraMap R K r : adicCompletion K v), coe_algebraMap_mem _ _ v r⟩
    map_one' := by simp only [map_one]; rfl
    map_mul' x y := by
      ext
      simp only [map_mul, UniformSpace.Completion.coe_mul, MulMemClass.mk_mul_mk]
    map_zero' := by simp only [map_zero]; rfl
    map_add' x y := by
      ext
      simp only [map_add, UniformSpace.Completion.coe_add, AddMemClass.mk_add_mk] }
  commutes' r x := by
    rw [mul_comm]
  smul_def' r x := by
    ext
    simp only [Subring.coe_mul, Algebra.smul_def]
    rfl

variable {R K} in
open scoped algebraMap in -- to make the coercions from `R` fire
/-- The valuation on the completion agrees with the global valuation on elements of the
integer ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa73aedb4ac193b41a3f33fd885d99f34e614ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

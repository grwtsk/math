# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de7b227a9b5ae8c97954279289f26e9cfeac07e4f96d94976b7fc784fb90c5bb",
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
  "slug": "instance--8d8bdfaaba1a6d7ed7c73952",
  "source": {
    "blob": "074c3feec6c9b4af33d8d33a3d7cc253fd8791d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 423,
    "path": "GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d8bdfaaba1a6d7ed7c73952b9fb48c0c9d6a9db8d1b200a89a66c3e81e388aa",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de7b227a9b5ae8c97954279289f26e9cfeac07e4f96d94976b7fc784fb90c5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Algebra R (v.adicCompletionIntegers K) where
  smul r x :=
    ⟨r • (x : v.adicCompletion K), by
      have h :
        (algebraMap R (adicCompletion K v)) r = (algebraMap R K r : adicCompletion K v) := rfl
      rw [Algebra.smul_def]
      refine' ValuationSubring.mul_mem _ _ _ _ x.2
      --Porting note: added instance
      letI : Valued K ℤₘ₀ := adicValued v
      rw [mem_adicCompletionIntegers, h, Valued.valuedCompletion_apply]
      exact v.valuation_le_one _⟩
  toFun r :=
    ⟨(algebraMap R K r : adicCompletion K v), by
      -- Porting note: added instance
      letI : Valued K ℤₘ₀ := adicValued v
      --Porting note: rest of proof was `simpa only
      --   [mem_adicCompletionIntegers, Valued.valuedCompletion_apply] using
      --   v.valuation_le_one _
      rw [mem_adicCompletionIntegers, Valued.valuedCompletion_apply]
      exact v.valuation_le_one _⟩
  map_one' := by simp only [map_one]; rfl
  map_mul' x y := by
    ext
    --Porting note: added instance
    letI : Valued K ℤₘ₀ := adicValued v
    simp_rw [RingHom.map_mul, Subring.coe_mul, UniformSpace.Completion.coe_mul]
  map_zero' := by simp only [map_zero]; rfl
  map_add' x y := by
    ext
    --Porting note: added instance
    letI : Valued K ℤₘ₀ := adicValued v
    simp_rw [RingHom.map_add, Subring.coe_add, UniformSpace.Completion.coe_add]
  commutes' r x := by
    -- Porting note: added `dsimp` line
    dsimp
    rw [mul_comm]
  smul_def' r x := by
    ext
    --Porting note: added `dsimp`
    dsimp
    --Porting note: added instance
    letI : Valued K ℤₘ₀ := adicValued v
    simp only [Subring.coe_mul, Algebra.smul_def]
    rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c3feec6c9b4af33d8d33a3d7cc253fd8791d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

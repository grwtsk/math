# singular_at_a_of_dvd_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d7a9acb-31bf-54aa-7eb4-50591eb26ffe",
  "kind": "theorem",
  "lexical_name": "singular_at_a_of_dvd_c",
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
  "slug": "singular-at-a-of-dvd-c--5ad0b0d4025979267b4b169a",
  "source": {
    "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ad0b0d4025979267b4b169a6640ca128a98d643bddc6ea49748672a83763037",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d7a9acb-31bf-54aa-7eb4-50591eb26ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_at_a_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hc : p ∣ t.c) :
    (t.freyResidueModel p).toAffine.Equation (t.a : ZMod p) 0 ∧
    (t.freyResidueModel p).toAffine.polynomialX.evalEval (t.a : ZMod p) 0 = 0 ∧
    (t.freyResidueModel p).toAffine.polynomialY.evalEval (t.a : ZMod p) 0 = 0 := by
  have hb := residue_b_of_dvd_c t p hc
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [Affine.equation_iff, Affine.evalEval_polynomialX, Affine.evalEval_polynomialY,
    PrimitiveAdditiveTriple.freyResidueModel, PrimitiveAdditiveTriple.freyIntegralModel,
    freyWeierstrassInt, WeierstrassCurve.map, hb] <;> ring

/-- Full local expansion: the tangent cone is quadratic but the curve retains -u^3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

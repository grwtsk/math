# branch_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30518d9f-6ed8-81d7-1926-7b172ec1590d",
  "kind": "theorem",
  "lexical_name": "branch_relation",
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
  "slug": "branch-relation--cd2ac208162c3d5ba5285335",
  "source": {
    "blob": "b327bf779267e76618c63f959a23b56617903033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetImage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd2ac208162c3d5ba5285335aeb7c08334b1af0b5f6090e9f2f96217f1f268d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetImage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30518d9f-6ed8-81d7-1926-7b172ec1590d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem branch_relation (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    WeierstrassIntegralImage.Relation (integerModel t).a₂ (integerModel t).a₄
      (branch t N) (parameter N) := by
  let c := FreyJetQuotient.parameterScalar ℚ N
  have hb : ((integerModel t).a₄ : ℚ)≠0 := by exact_mod_cast selected_a4_ne_zero t hd
  have hi : c ((integerModel t).a₄ : ℚ)*c (((integerModel t).a₄ : ℚ)⁻¹)=1 := by
    rw [← map_mul,mul_inv_cancel₀ hb,map_one]
  have he := WeierstrassMixedLift.lift_equation
    (c ((integerModel t).a₂ : ℚ)) (c ((integerModel t).a₄ : ℚ))
    (c (((integerModel t).a₄ : ℚ)⁻¹)) (parameter N) hi (N+1) (parameter_nilpotent N)
  rw [Affine.equation_iff] at he
  simpa [WeierstrassIntegralImage.Relation,WeierstrassSecondJet.model,branch,c] using he

/-- Coefficient-level reconciliation to the inherited rational origin-jet map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetImage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetImage.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b327bf779267e76618c63f959a23b56617903033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

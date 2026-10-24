# algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:294c917ff2fec08836b5c8fb2ce575ceab2ffd584e42cd823e7a5bc6d1a42cd0",
  "kind": "def",
  "lexical_name": "algebraMap",
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
  "slug": "algebramap--f1ffd06e47e1ed4e408ff77d",
  "source": {
    "blob": "8580e4ac2eeba3ff22fb39856fb6df1805272d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1ffd06e47e1ed4e408ff77ddaaa29312061a445f5093e7f0035f7ca248d8803",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:294c917ff2fec08836b5c8fb2ce575ceab2ffd584e42cd823e7a5bc6d1a42cd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def algebraMap : K →+* FiniteAdeleRing R K where
  toFun k := ⟨fun i ↦ k, by
    simp only [Filter.eventually_cofinite, SetLike.mem_coe, mem_adicCompletionIntegers R K,
     adicCompletion, Valued.valuedCompletion_apply, not_le]
    exact HeightOneSpectrum.Support.finite R k⟩
  map_one' := rfl
  map_mul' x y := Subtype.eq <| funext (fun v ↦
    UniformSpace.Completion.coe_mul ((WithVal.equiv (valuation K v)).symm x) y)
  map_zero' := rfl
  map_add' x y := Subtype.eq <| funext (fun v ↦
    UniformSpace.Completion.coe_add ((WithVal.equiv (valuation K v)).symm x) y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8580e4ac2eeba3ff22fb39856fb6df1805272d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ofMulAction_self_smul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1fb8da23505f21f17be9d4eb3fa064410ff8046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ff06537-a7ea-a2db-fa88-1c1454ca1a3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e29543b6-1f28-833a-2029-9529cdd752dd",
  "kind": "theorem",
  "lexical_name": "ofMulAction_self_smul_eq_mul",
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
  "slug": "ofmulaction-self-smul-eq-mul--0d2e59f9e999f37edc96971e",
  "source": {
    "blob": "f1fb8da23505f21f17be9d4eb3fa064410ff8046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d2e59f9e999f37edc96971e50a0d728287b871bcd9622a5048ff358eed8d00e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29543b6-1f28-833a-2029-9529cdd752dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMulAction_self_smul_eq_mul (x : MonoidAlgebra k G) (y : (ofMulAction k G G).asModule) :
    x • y = (x * y : MonoidAlgebra k G) := -- by
  -- Porting note: trouble figuring out the motive
  x.induction_on (p := fun z => z • y = z * y)
    (fun g => by
      show asAlgebraHom (ofMulAction k G G) _ _ = _; ext;
      simp only [MonoidAlgebra.of_apply, asAlgebraHom_single, one_smul,
        ofMulAction_apply, smul_eq_mul]
      -- Porting note : single_mul_apply not firing in simp
      rw [MonoidAlgebra.single_mul_apply, one_mul]
    )
    (fun x y hx hy => by simp only [hx, hy, add_mul, add_smul]) fun r x hx => by
    show asAlgebraHom (ofMulAction k G G) _ _ = _  -- Porting note: was simpa [← hx]
    simp only [map_smul, smul_apply, Algebra.smul_mul_assoc]
    rw [←hx]
    rfl
#align representation.of_mul_action_self_smul_eq_mul Representation.ofMulAction_self_smul_eq_mul

/-- If we equip `k[G]` with the `k`-linear `G`-representation induced by the left regular action of
`G` on itself, the resulting object is isomorphic as a `k[G]`-module to `k[G]` with its natural
`k[G]`-module structure. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1fb8da23505f21f17be9d4eb3fa064410ff8046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

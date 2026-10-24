# ofEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b4ddafff3ed1e77f77bdf1b4d4e2709e7ca7e03f4cade42c850b6b49f830fb2",
  "kind": "def",
  "lexical_name": "ofEven",
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
  "slug": "ofeven--40fb2080cbb19d4d17fa3e98",
  "source": {
    "blob": "675b900ccac6c0da9635f463e2cc93b8b54e0bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40fb2080cbb19d4d17fa3e98f840bd8ea690f2b8765cc40cde5ed0cd1c63b763",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b4ddafff3ed1e77f77bdf1b4d4e2709e7ca7e03f4cade42c850b6b49f830fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEven : CliffordAlgebra.even (Q' Q) →ₐ[R] CliffordAlgebra Q := by
  /-
    Recall that we need:
     * `f ⟨0,1⟩ ⟨x,0⟩ = ι x`
     * `f ⟨x,0⟩ ⟨0,1⟩ = -ι x`
     * `f ⟨x,0⟩ ⟨y,0⟩ = ι x * ι y`
     * `f ⟨0,1⟩ ⟨0,1⟩ = -1`
    -/
  let f : M × R →ₗ[R] M × R →ₗ[R] CliffordAlgebra Q :=
    ((Algebra.lmul R (CliffordAlgebra Q)).toLinearMap.comp <|
          (ι Q).comp (LinearMap.fst _ _ _) +
            (Algebra.linearMap R _).comp (LinearMap.snd _ _ _)).compl₂
      ((ι Q).comp (LinearMap.fst _ _ _) - (Algebra.linearMap R _).comp (LinearMap.snd _ _ _))
  haveI f_apply : ∀ x y, f x y = (ι Q x.1 + algebraMap R _ x.2) * (ι Q y.1 - algebraMap R _ y.2) :=
    fun x y => by rfl
  haveI hc : ∀ (r : R) (x : CliffordAlgebra Q), Commute (algebraMap _ _ r) x := Algebra.commutes
  haveI hm :
    ∀ m : M × R,
      ι Q m.1 * ι Q m.1 - algebraMap R _ m.2 * algebraMap R _ m.2 = algebraMap R _ (Q' Q m) := by
    intro m
    rw [ι_sq_scalar, ← RingHom.map_mul, ← RingHom.map_sub, sub_eq_add_neg, Q'_apply, sub_eq_add_neg]
  refine' even.lift (Q' Q) ⟨f, _, _⟩ <;> simp_rw [f_apply]
  · intro m
    rw [← (hc _ _).symm.mul_self_sub_mul_self_eq, hm]
  · intro m₁ m₂ m₃
    rw [← mul_smul_comm, ← mul_assoc, mul_assoc (_ + _), ← (hc _ _).symm.mul_self_sub_mul_self_eq',
      Algebra.smul_def, ← mul_assoc, hm]
#align clifford_algebra.of_even CliffordAlgebra.ofEven

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `675b900ccac6c0da9635f463e2cc93b8b54e0bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

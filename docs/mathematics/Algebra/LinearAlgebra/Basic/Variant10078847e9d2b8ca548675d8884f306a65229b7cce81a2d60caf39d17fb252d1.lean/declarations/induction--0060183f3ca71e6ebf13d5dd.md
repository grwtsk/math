# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b86fbab-96d9-eb2b-c534-5ce49449ce45",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--0060183f3ca71e6ebf13d5dd",
  "source": {
    "blob": "a223e2127b7995bbceb0ee97ed49545d64401713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 214,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0060183f3ca71e6ebf13d5ddc7ef91e2621f22229a8f7a5a8791040345f9dfbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b86fbab-96d9-eb2b-c534-5ce49449ce45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction {C : CliffordAlgebra Q → Prop}
    (h_grade0 : ∀ r, C (algebraMap R (CliffordAlgebra Q) r)) (h_grade1 : ∀ x, C (ι Q x))
    (h_mul : ∀ a b, C a → C b → C (a * b)) (h_add : ∀ a b, C a → C b → C (a + b))
    (a : CliffordAlgebra Q) : C a := by
  -- the arguments are enough to construct a subalgebra, and a mapping into it from M
  let s : Subalgebra R (CliffordAlgebra Q) :=
    { carrier := C
      mul_mem' := @h_mul
      add_mem' := @h_add
      algebraMap_mem' := h_grade0 }
  -- porting note: Added `h`. `h` is needed for `of`.
  letI h : AddCommMonoid s := inferInstanceAs (AddCommMonoid (Subalgebra.toSubmodule s))
  let of : { f : M →ₗ[R] s // ∀ m, f m * f m = algebraMap _ _ (Q m) } :=
    ⟨(ι Q).codRestrict (Subalgebra.toSubmodule s) h_grade1, fun m => Subtype.eq <| ι_sq_scalar Q m⟩
  -- the mapping through the subalgebra is the identity
  have of_id : AlgHom.id R (CliffordAlgebra Q) = s.val.comp (lift Q of) := by
    ext
    simp
    -- porting note: `simp` can't apply this
    erw [LinearMap.codRestrict_apply]
  -- finding a proof is finding an element of the subalgebra
  -- porting note: was `convert Subtype.prop (lift Q of a); exact AlgHom.congr_fun of_id a`
  rw [← AlgHom.id_apply (R := R) a, of_id]
  exact Subtype.prop (lift Q of a)
#align clifford_algebra.induction CliffordAlgebra.induction

/-- The symmetric product of vectors is a scalar -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a223e2127b7995bbceb0ee97ed49545d64401713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

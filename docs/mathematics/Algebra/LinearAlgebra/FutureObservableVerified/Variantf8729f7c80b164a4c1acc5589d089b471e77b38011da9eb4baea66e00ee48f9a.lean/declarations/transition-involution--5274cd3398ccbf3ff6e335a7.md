# transition_involution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:632962bc-da6f-9a8a-cc57-59206453270f",
  "kind": "theorem",
  "lexical_name": "transition_involution",
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
  "slug": "transition-involution--5274cd3398ccbf3ff6e335a7",
  "source": {
    "blob": "d85bbe9816b8bcb90b9eae79dcb86dc1a540071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5274cd3398ccbf3ff6e335a7767f58f51e5304599d7967f3cc7ae1920927386a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632962bc-da6f-9a8a-cc57-59206453270f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transition_involution (g : Move) (h : Function.Involutive (step g))
    (independent : LinearIndependent ℚ C.retained) :
    C.transition g * C.transition g = 1 := by
  have unique := (Fintype.linearIndependent_iffₛ).mp independent
  ext i j
  have row_eq : (C.transition g * C.transition g) i = (1 : Matrix Basis Basis ℚ) i := by
    funext k
    apply unique _ _ _ k
    funext x
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    change ((C.transition g * C.transition g).mulVec (C.observe x)) i =
      ((1 : Matrix Basis Basis ℚ).mulVec (C.observe x)) i
    rw [← Matrix.mulVec_mulVec, C.transition_involution_on_image g h,
      Matrix.one_mulVec]
  exact congrFun row_eq j

end Certificate

section RationalQuadratic

variable {ι : Type u} [Fintype ι]

/-- The exact rational quadratic readout, with all signs retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85bbe9816b8bcb90b9eae79dcb86dc1a540071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

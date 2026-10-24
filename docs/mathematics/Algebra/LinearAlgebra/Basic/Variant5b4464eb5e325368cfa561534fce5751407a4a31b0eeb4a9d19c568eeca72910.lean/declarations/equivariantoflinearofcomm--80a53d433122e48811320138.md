# equivariantOfLinearOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b56c5e63147d824b9fccd5e1dc29ce65b13e97e5344389e9cf2900745cc4f511",
  "kind": "def",
  "lexical_name": "equivariantOfLinearOfComm",
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
  "slug": "equivariantoflinearofcomm--80a53d433122e48811320138",
  "source": {
    "blob": "a79ba61d486939ea9070cfc44894b0417212565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 322,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80a53d433122e48811320138b4fc33930fd44d13133fe395a446eae81ccb2fae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b56c5e63147d824b9fccd5e1dc29ce65b13e97e5344389e9cf2900745cc4f511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivariantOfLinearOfComm
    (h : ∀ (g : G) (v : V), f (single g (1 : k) • v) = single g (1 : k) • f v) :
    V →ₗ[MonoidAlgebra k G] W where
  toFun := f
  map_add' v v' := by simp
  map_smul' c v := by
    refine Finsupp.induction c ?_ ?_
    · simp
    · intro g r c' _nm _nz w
      dsimp at *
      simp only [add_smul, f.map_add, w, add_left_inj, single_eq_algebraMap_mul_of, ← smul_smul]
      rw [algebraMap_smul (MonoidAlgebra k G) r, algebraMap_smul (MonoidAlgebra k G) r, f.map_smul,
        of_apply, h g v]

variable (h : ∀ (g : G) (v : V), f (single g (1 : k) • v) = single g (1 : k) • f v)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79ba61d486939ea9070cfc44894b0417212565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

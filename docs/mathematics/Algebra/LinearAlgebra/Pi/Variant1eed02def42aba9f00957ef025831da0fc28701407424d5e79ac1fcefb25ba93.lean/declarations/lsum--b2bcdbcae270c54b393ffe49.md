# lsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65cf5d9ba3a0eaca500496bbb63e732bcc6fe77df03563bdeb47c998652e76c7",
  "kind": "def",
  "lexical_name": "lsum",
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
  "slug": "lsum--b2bcdbcae270c54b393ffe49",
  "source": {
    "blob": "1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2bcdbcae270c54b393ffe492f09f2229ad973b28e9b4ed2621ac4ad0660982f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65cf5d9ba3a0eaca500496bbb63e732bcc6fe77df03563bdeb47c998652e76c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lsum (S) [AddCommMonoid M] [Module R M] [Fintype ι] [Semiring S] [Module S M]
    [SMulCommClass R S M] : ((i : ι) → φ i →ₗ[R] M) ≃ₗ[S] ((i : ι) → φ i) →ₗ[R] M where
  toFun f := ∑ i : ι, (f i).comp (proj i)
  invFun f i := f.comp (single R φ i)
  map_add' f g := by simp only [Pi.add_apply, add_comp, Finset.sum_add_distrib]
  map_smul' c f := by simp only [Pi.smul_apply, smul_comp, Finset.smul_sum, RingHom.id_apply]
  left_inv f := by
    ext i x
    simp [apply_single]
  right_inv f := by
    ext x
    suffices f (∑ j, Pi.single j (x j)) = f x by simpa [apply_single]
    rw [Finset.univ_sum_single]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

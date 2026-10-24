# reesAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:956d59e91320617e0c7f48f6d60e51decc7999b58f6646e3cf4dfc81ff37be34",
  "kind": "def",
  "lexical_name": "reesAlgebra",
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
  "slug": "reesalgebra--29e70f04364b2713f7e1bbc1",
  "source": {
    "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29e70f04364b2713f7e1bbc165d011100a76eedb63f2d631cce663c21d740d11",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:956d59e91320617e0c7f48f6d60e51decc7999b58f6646e3cf4dfc81ff37be34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reesAlgebra : Subalgebra R R[X] where
  carrier := { f | ∀ i, f.coeff i ∈ I ^ i }
  mul_mem' hf hg i := by
    rw [coeff_mul]
    apply Ideal.sum_mem
    rintro ⟨j, k⟩ e
    rw [← Finset.Nat.mem_antidiagonal.mp e, pow_add]
    exact Ideal.mul_mem_mul (hf j) (hg k)
  one_mem' i := by
    rw [coeff_one]
    split_ifs with h
    · subst h
      simp
    · simp
  add_mem' hf hg i := by
    rw [coeff_add]
    exact Ideal.add_mem _ (hf i) (hg i)
  zero_mem' i := Ideal.zero_mem _
  algebraMap_mem' r i := by
    rw [algebraMap_apply, coeff_C]
    split_ifs with h
    · subst h
      simp
    · simp
#align rees_algebra reesAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

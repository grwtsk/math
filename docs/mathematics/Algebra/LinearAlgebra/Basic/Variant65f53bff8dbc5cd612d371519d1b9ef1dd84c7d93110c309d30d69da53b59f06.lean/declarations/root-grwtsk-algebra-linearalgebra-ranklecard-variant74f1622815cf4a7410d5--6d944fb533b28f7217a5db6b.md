# _root_.GRWTSK.Algebra.LinearAlgebra.RankLeCard.Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.LinearIndepOn.encard_le_toENat_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:891d74be-63ac-f227-72ee-782f3dcc410d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RankLeCard.Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.LinearIndepOn.encard_le_toENat_rank",
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
  "slug": "root-grwtsk-algebra-linearalgebra-ranklecard-variant74f1622815cf4a7410d5--6d944fb533b28f7217a5db6b",
  "source": {
    "blob": "513347a9801998659f8f17c4f575144d128f82c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d944fb533b28f7217a5db6b69ac2f69d8b208695d47e9b0bae3abf201e3246b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:891d74be-63ac-f227-72ee-782f3dcc410d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.RankLeCard.Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.LinearIndepOn.encard_le_toENat_rank {ι : Type*} {v : ι → M} {s : Set ι}
    (hs : LinearIndepOn R v s) : s.encard ≤ (Module.rank R M).toENat := by
  simpa using OrderHom.mono (β := ℕ∞) Cardinal.toENat hs.linearIndependent.cardinal_lift_le_rank

end LinearIndependent

section SurjectiveInjective

section Semiring
variable [Semiring R] [AddCommMonoid M] [Module R M] [Semiring R']

section
variable [AddCommMonoid M'] [Module R' M']

/-- If `M / R` and `M' / R'` are modules, `i : R' → R` is an injective map
non-zero elements, `j : M →+ M'` is an injective monoid homomorphism, such that the scalar
multiplications on `M` and `M'` are compatible, then the rank of `M / R` is smaller than or equal to
the rank of `M' / R'`. As a special case, taking `R = R'` it is
`LinearMap.lift_rank_le_of_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `513347a9801998659f8f17c4f575144d128f82c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

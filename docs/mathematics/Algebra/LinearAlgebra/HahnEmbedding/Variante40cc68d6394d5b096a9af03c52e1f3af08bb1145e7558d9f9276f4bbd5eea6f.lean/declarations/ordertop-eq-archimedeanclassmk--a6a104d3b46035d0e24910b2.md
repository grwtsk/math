# orderTop_eq_archimedeanClassMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e710c4c-a224-01b8-2453-a88131cf8d12",
  "kind": "theorem",
  "lexical_name": "orderTop_eq_archimedeanClassMk",
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
  "slug": "ordertop-eq-archimedeanclassmk--a6a104d3b46035d0e24910b2",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 449,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a104d3b46035d0e24910b20d84faee3374bb7cda9ad170113564344a04d881",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e710c4c-a224-01b8-2453-a88131cf8d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_eq_archimedeanClassMk [IsOrderedAddMonoid R] [Archimedean R] (x : f.val.domain) :
    FiniteArchimedeanClass.withTopOrderIso M (ofLex (f.val x)).orderTop = .mk x.val := by
  by_cases hx0 : x = 0
  · simp [hx0]
  have hx0' : x.val ≠ 0 := by simpa using hx0
  -- Pick a representative `x'` from `stratum` with the same class as `x`.
  -- `f.val x'` is a `HahnSeries.single` whose `orderTop` is known
  obtain ⟨⟨x', hx'mem⟩, hx'0⟩ := exists_ne (0 : seed.stratum (.mk x hx0'))
  have heq : ArchimedeanClass.mk x' = .mk x.val := by
    apply seed.archimedeanClassMk_of_mem_stratum hx'mem
    simpa using hx'0
  let x'' : f.val.domain := ⟨x', mem_domain f hx'mem⟩
  have hx''mem : x''.val ∈ seed.stratum (mk x.val hx0') := hx'mem
  have h0 : (seed.coeff (mk x.val hx0')) ⟨x''.val, hx''mem⟩ ≠ 0 := by
    rw [(LinearMap.map_eq_zero_iff _ (seed.strictMono_coeff _).injective).ne]
    unfold x''
    simpa using hx'0
  have heq' : ArchimedeanClass.mk x''.val = .mk x.val := heq
  rw [← orderTop_eq_iff, apply_of_mem_stratum f hx''mem, ofLex_toLex,
    HahnSeries.orderTop_single h0] at heq'
  simp [← heq']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# adj_iff_proj_adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31f2c444-f5df-ad81-cb49-6780f9d12bf2",
  "kind": "theorem",
  "lexical_name": "adj_iff_proj_adj",
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
  "slug": "adj-iff-proj-adj--201fa1a4cf5b32e677076c19",
  "source": {
    "blob": "f33e620e793d5452a8472b0adfe16c24e3a0d7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201fa1a4cf5b32e677076c1992e8d45b8ef89840cec647d769fce86bd9517c15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31f2c444-f5df-ad81-cb49-6780f9d12bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adj_iff_proj_adj {p q : Q n.succ} (h₀ : p 0 = q 0) :
    q ∈ p.adjacent ↔ π q ∈ (π p).adjacent := by
  constructor
  · rintro ⟨i, h_eq, h_uni⟩
    have h_i : i ≠ 0 := fun h_i => absurd h₀ (by rwa [h_i] at h_eq )
    use i.pred h_i,
      show p (Fin.succ (Fin.pred i _)) ≠ q (Fin.succ (Fin.pred i _)) by rwa [Fin.succ_pred]
    intro y hy
    simp [Eq.symm (h_uni _ hy)]
  · rintro ⟨i, h_eq, h_uni⟩
    use i.succ, h_eq
    intro y hy
    rw [← Fin.pred_inj (ha := (?ha : y ≠ 0)) (hb := (?hb : i.succ ≠ 0)),
      Fin.pred_succ]
    case ha =>
      contrapose! hy
      rw [hy, h₀]
    case hb =>
      apply Fin.succ_ne_zero
    apply h_uni
    simp [π, hy]
#align sensitivity.Q.adj_iff_proj_adj Sensitivity.Q.adj_iff_proj_adj

@[symm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33e620e793d5452a8472b0adfe16c24e3a0d7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

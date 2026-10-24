# Fin.succAboveOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b9fdc9c6ec1ba845fb54f0158dbb8f61295bea118fb0abb152b4281171297a3",
  "kind": "def",
  "lexical_name": "Fin.succAboveOrderIso",
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
  "slug": "fin-succaboveorderiso--2b3152e33429b194ffa6fe92",
  "source": {
    "blob": "a4e7776ad5c59a1128841cde5ae340077d497986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SuccAboveOrderIso/Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b3152e33429b194ffa6fe92f43cb8297b63ad635398faaa5cfc3298cfc03447",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SuccAboveOrderIso/Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b9fdc9c6ec1ba845fb54f0158dbb8f61295bea118fb0abb152b4281171297a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Fin.succAboveOrderIso {n : ℕ} (i : Fin (n + 2)) :
    Fin (n + 1) ≃o ({i}ᶜ : Finset (Fin (n + 2))) where
  toEquiv :=
    Equiv.ofBijective (f := fun a ↦ ⟨Fin.succAboveOrderEmb i a, by simp⟩) (by
      constructor
      · intro a b h
        exact (Fin.succAboveOrderEmb i).injective (by simpa using h)
      · rintro ⟨j, hj⟩
        simp only [mem_compl, mem_singleton] at hj
        obtain rfl | ⟨i, rfl⟩ := Fin.eq_zero_or_eq_succ i
        · exact ⟨j.pred hj, by simp⟩
        · exact ⟨i.predAbove j, by aesop⟩)
  map_rel_iff' {a b} := by
    simp only [Equiv.ofBijective_apply, Subtype.mk_le_mk, OrderEmbedding.le_iff_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SuccAboveOrderIso/Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SuccAboveOrderIso/Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e7776ad5c59a1128841cde5ae340077d497986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

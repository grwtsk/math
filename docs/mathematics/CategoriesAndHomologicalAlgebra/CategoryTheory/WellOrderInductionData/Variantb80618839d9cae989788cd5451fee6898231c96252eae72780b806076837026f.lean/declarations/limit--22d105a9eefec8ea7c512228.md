# limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f7b47300e25197d5592f779c84caf17ed03613d4c57b5a615b2e37b34177457",
  "kind": "def",
  "lexical_name": "limit",
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
  "slug": "limit--22d105a9eefec8ea7c512228",
  "source": {
    "blob": "db0414e5b6614f7b302812aa95bf57cd7482bc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22d105a9eefec8ea7c512228144d23620cc324662549e58a569d03b8b84c0e34",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f7b47300e25197d5592f779c84caf17ed03613d4c57b5a615b2e37b34177457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limit (j : J) (hj : Order.IsSuccLimit j)
    (e : ∀ (i : J) (_ : i < j), d.Extension val₀ i) :
    d.Extension val₀ j where
  val := d.lift j hj
    { val := fun ⟨i, hi⟩ ↦ (e i hi).val
      property := fun f ↦ by dsimp; apply compatibility }
  map_zero := by
    rw [d.map_lift _ _ _ _ (by simpa [bot_lt_iff_ne_bot] using hj.not_isMin)]
    simpa using (e ⊥ (by simpa [bot_lt_iff_ne_bot] using hj.not_isMin)).map_zero
  map_succ i hi := by
    convert!
      (e (Order.succ i) ((Order.IsSuccLimit.succ_lt_iff hj).mpr hi)).map_succ i
        (by
          simp only [Order.lt_succ_iff_not_isMax, not_isMax_iff]
          exact ⟨_, hi⟩) using 1
    · dsimp
      rw [map_id, id_apply, d.map_lift _ _ _ _ ((Order.IsSuccLimit.succ_lt_iff hj).mpr hi)]
    · congr 1
      rw [d.map_lift _ _ _ _ hi]
      symm
      apply compatibility
  map_limit i hi hij := by
    obtain hij' | rfl := hij.lt_or_eq
    · have := (e i hij').map_limit i hi (by rfl)
      dsimp at this ⊢
      rw [map_id, id_apply] at this
      rw [d.map_lift _ _ _ _ hij']
      dsimp
      rw [this]
      congr
      ext ⟨⟨l, hl⟩⟩
      rw [map_lift _ _ _ _ _ (hl.trans hij')]
      apply compatibility
    · dsimp
      rw [map_id, id_apply]
      congr
      ext ⟨⟨l, hl⟩⟩
      rw [d.map_lift _ _ _ _ hl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db0414e5b6614f7b302812aa95bf57cd7482bc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

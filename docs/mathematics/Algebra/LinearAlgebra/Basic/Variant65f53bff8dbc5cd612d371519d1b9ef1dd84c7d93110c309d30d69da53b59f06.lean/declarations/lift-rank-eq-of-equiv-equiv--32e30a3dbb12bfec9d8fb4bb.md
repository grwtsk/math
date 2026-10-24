# lift_rank_eq_of_equiv_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5e5abd0-6bd5-299c-0db4-a977f1cd6b43",
  "kind": "theorem",
  "lexical_name": "lift_rank_eq_of_equiv_equiv",
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
  "slug": "lift-rank-eq-of-equiv-equiv--32e30a3dbb12bfec9d8fb4bb",
  "source": {
    "blob": "513347a9801998659f8f17c4f575144d128f82c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e30a3dbb12bfec9d8fb4bb64d06b34ea2e73cdfa55fae19095a658e92d8cd1",
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

Occurrence: `result:e5e5abd0-6bd5-299c-0db4-a977f1cd6b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_eq_of_equiv_equiv (i : R → R') (j : M ≃+ M')
    (hi : Bijective i) (hc : ∀ (r : R) (m : M), j (r • m) = i r • j m) :
    lift.{v'} (Module.rank R M) = lift.{v} (Module.rank R' M') :=
  (lift_rank_le_of_surjective_injective i j hi.2 j.injective hc).antisymm <|
    lift_rank_le_of_injective_injectiveₛ i j.symm hi.1
      j.symm.injective fun _ _ ↦ j.symm_apply_eq.2 <| by erw [hc, j.apply_symm_apply]
end

section
variable [AddCommMonoid M₁] [Module R' M₁]

/-- The same-universe version of `lift_rank_le_of_injective_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `513347a9801998659f8f17c4f575144d128f82c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

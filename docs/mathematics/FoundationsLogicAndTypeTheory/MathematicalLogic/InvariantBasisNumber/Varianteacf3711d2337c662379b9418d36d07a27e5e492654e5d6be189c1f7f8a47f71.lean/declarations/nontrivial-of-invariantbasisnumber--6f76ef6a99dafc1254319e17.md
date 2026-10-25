# nontrivial_of_invariantBasisNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ff4ce972441ed87dfee1ac80166fc82d9495f5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2df93b36-f1fc-4879-d8cc-c10f193b0e46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dc38ff6-222c-f2b1-4ec7-0d3819eef4f8",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_invariantBasisNumber",
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
  "slug": "nontrivial-of-invariantbasisnumber--6f76ef6a99dafc1254319e17",
  "source": {
    "blob": "1ff4ce972441ed87dfee1ac80166fc82d9495f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f76ef6a99dafc1254319e17be961b5b0664c23713504e0aac7110862a51ae13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc38ff6-222c-f2b1-4ec7-0d3819eef4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_invariantBasisNumber : Nontrivial R := by
  by_contra h
  refine' zero_ne_one (eq_of_fin_equiv R _)
  haveI := not_nontrivial_iff_subsingleton.1 h
  haveI : Subsingleton (Fin 1 → R) :=
    Subsingleton.intro <| fun a b => funext fun x => Subsingleton.elim _ _
  exact
    { toFun := 0
      invFun := 0
      map_add' := by aesop
      map_smul' := by aesop
      left_inv := fun _ => by simp
      right_inv := fun _ => by simp }
#align nontrivial_of_invariant_basis_number nontrivial_of_invariantBasisNumber

end

section

variable (R : Type u) [Ring R] [Nontrivial R] [IsNoetherianRing R]

-- Note this includes fields,
-- and we use this below to show any commutative ring has invariant basis number.
/-- Any nontrivial noetherian ring satisfies the strong rank condition.

An injective map `((Fin n ⊕ Fin (1 + m)) → R) →ₗ[R] (Fin n → R)` for some left-noetherian `R`
would force `Fin (1 + m) → R ≃ₗ PUnit` (via `IsNoetherian.equivPUnitOfProdInjective`),
which is not the case!
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff4ce972441ed87dfee1ac80166fc82d9495f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

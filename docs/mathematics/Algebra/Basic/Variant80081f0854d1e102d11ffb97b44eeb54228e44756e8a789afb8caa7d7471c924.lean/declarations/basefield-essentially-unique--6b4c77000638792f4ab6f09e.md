# baseField_essentially_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b239859-3f4b-0c58-a2fc-71d310a68418",
  "kind": "lemma",
  "lexical_name": "baseField_essentially_unique",
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
  "slug": "basefield-essentially-unique--6b4c77000638792f4ab6f09e",
  "source": {
    "blob": "21a601127605b9d7808b1421804c4b6157110ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b4c77000638792f4ab6f09e03606e866194302a1903499df154f0215b9c9fd9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b239859-3f4b-0c58-a2fc-71d310a68418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseField_essentially_unique
    (k K D : Type*) [Field k] [Field K] [Ring D] [Nontrivial D]
    [Algebra k K] [Algebra K D] [Algebra k D] [IsScalarTower k K D]
    [IsCentral k D] :
    Function.Bijective (algebraMap k K) := by
  haveI : IsCentral K D :=
  { out := fun x ↦ show x ∈ Subalgebra.center k D → _ by
      simp only [center_eq_bot, mem_bot, Set.mem_range, forall_exists_index]
      rintro x rfl
      exact  ⟨algebraMap k K x, by simp [algebraMap_eq_smul_one, smul_assoc]⟩ }
  refine ⟨FaithfulSMul.algebraMap_injective k K, fun x => ?_⟩
  have H : algebraMap K D x ∈ (Subalgebra.center K D : Set D) := Subalgebra.algebraMap_mem _ _
  rw [show (Subalgebra.center K D : Set D) = Subalgebra.center k D by rfl] at H
  simp only [center_eq_bot, coe_bot, Set.mem_range] at H
  obtain ⟨x', H⟩ := H
  exact ⟨x', (algebraMap K D).injective <| by simp [← H, algebraMap_eq_smul_one]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a601127605b9d7808b1421804c4b6157110ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b2eade4-7617-88ff-cfdb-450b129c2189",
  "kind": "theorem",
  "lexical_name": "trans",
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
  "slug": "trans--842b30ac1b540bafaca10125",
  "source": {
    "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:842b30ac1b540bafaca10125ab3f65d13d56817ed43ab06b80edd4f010d4bc6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b2eade4-7617-88ff-cfdb-450b129c2189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans (C : Type w) [CommRing C] [Algebra A C] [Algebra B C] [IsScalarTower A B C]
    [hS : IsCyclotomicExtension S A B] [hT : IsCyclotomicExtension T B C]
    (h : Function.Injective (algebraMap B C)) : IsCyclotomicExtension (S ∪ T) A C := by
  refine' ⟨fun hn => _, fun x => _⟩
  · cases' hn with hn hn
    · obtain ⟨b, hb⟩ := ((IsCyclotomicExtension_iff _ _ _).1 hS).1 hn
      refine' ⟨algebraMap B C b, _⟩
      exact hb.map_of_injective h
    · exact ((IsCyclotomicExtension_iff _ _ _).1 hT).1 hn
  · refine' adjoin_induction (((IsCyclotomicExtension_iff T B _).1 hT).2 x)
      (fun c ⟨n, hn⟩ => subset_adjoin ⟨n, Or.inr hn.1, hn.2⟩) (fun b => _)
      (fun x y hx hy => Subalgebra.add_mem _ hx hy) fun x y hx hy => Subalgebra.mul_mem _ hx hy
    · let f := IsScalarTower.toAlgHom A B C
      have hb : f b ∈ (adjoin A {b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1}).map f :=
        ⟨b, ((IsCyclotomicExtension_iff _ _ _).1 hS).2 b, rfl⟩
      rw [IsScalarTower.toAlgHom_apply, ← adjoin_image] at hb
      refine' adjoin_mono (fun y hy => _) hb
      obtain ⟨b₁, ⟨⟨n, hn⟩, h₁⟩⟩ := hy
      exact ⟨n, ⟨mem_union_left T hn.1, by rw [← h₁, ← AlgHom.map_pow, hn.2, AlgHom.map_one]⟩⟩
#align is_cyclotomic_extension.trans IsCyclotomicExtension.trans

@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555b555990870f5bab2dac123a1dc46f5586630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

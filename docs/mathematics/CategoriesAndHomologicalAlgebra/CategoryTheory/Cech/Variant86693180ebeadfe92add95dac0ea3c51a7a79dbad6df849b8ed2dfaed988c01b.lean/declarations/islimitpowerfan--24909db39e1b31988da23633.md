# isLimitPowerFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f4ef9dc5769dd9b74f553afffc96b449515cef62552a9c1bff776f01d2fe564",
  "kind": "def",
  "lexical_name": "isLimitPowerFan",
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
  "slug": "islimitpowerfan--24909db39e1b31988da23633",
  "source": {
    "blob": "6729b88eb46199e8d4aa58c0c819d898ef24c22c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24909db39e1b31988da2363366c75def5211747193abf8788111abd7e8ba20ca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f4ef9dc5769dd9b74f553afffc96b449515cef62552a9c1bff776f01d2fe564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitPowerFan : IsLimit (U.powerFan α) :=
  Fan.IsLimit.mk _
    (fun s ↦
      { f i a := (s.proj a).f i
        φ i := Pi.lift (fun a ↦ (s.proj a).φ i) })
    (fun _ _ ↦ by ext <;> simp)
    (fun s m hm ↦ by
      obtain ⟨f, φ⟩ := m
      obtain rfl : f = fun i a ↦ (s.proj a).f i := by
        ext i
        dsimp
        ext a
        exact congr_fun (congr_arg FormalCoproduct.Hom.f (hm a)) i
      ext i
      · rfl
      · dsimp
        ext a
        specialize hm a
        rw [hom_ext_iff] at hm
        obtain ⟨_, hm⟩ := hm
        simpa using hm i)

end

/-- For any morphism `f : U ⟶ V` in `FormalCoproduct C` and a type `α`,
this is the induced map `U.power α ⟶ V.power α`. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6729b88eb46199e8d4aa58c0c819d898ef24c22c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

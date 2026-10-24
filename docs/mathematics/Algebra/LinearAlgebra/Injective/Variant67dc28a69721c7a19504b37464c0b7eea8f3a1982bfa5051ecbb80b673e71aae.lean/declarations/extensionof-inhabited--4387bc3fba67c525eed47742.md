# ExtensionOf.inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ebbe81016e0fef40e0ea6a6beacc9ab6b1e84bd67f41ad65189e73a85e00d16",
  "kind": "instance",
  "lexical_name": "ExtensionOf.inhabited",
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
  "slug": "extensionof-inhabited--4387bc3fba67c525eed47742",
  "source": {
    "blob": "a6dc775ddd648a4cd36760639741d1a62649ec6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4387bc3fba67c525eed477429c8550b763363357d9e7f3e7dfeea3dcc302c1a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ebbe81016e0fef40e0ea6a6beacc9ab6b1e84bd67f41ad65189e73a85e00d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ExtensionOf.inhabited : Inhabited (ExtensionOf i f) where
  default :=
    { domain := LinearMap.range i
      toFun :=
        { toFun := fun x => f x.2.choose
          map_add' := fun x y => by
            have eq1 : _ + _ = (x + y).1 := congr_arg₂ (· + ·) x.2.choose_spec y.2.choose_spec
            rw [← map_add, ← (x + y).2.choose_spec] at eq1
            dsimp
            rw [← Fact.out (p := Function.Injective i) eq1, map_add]
          map_smul' := fun r x => by
            have eq1 : r • _ = (r • x).1 := congr_arg (r • ·) x.2.choose_spec
            rw [← map_smul, ← (r • x).2.choose_spec] at eq1
            dsimp
            rw [← Fact.out (p := Function.Injective i) eq1, map_smul] }
      le := le_refl _
      is_extension := fun m => by
        simp only [LinearPMap.mk_apply, LinearMap.coe_mk]
        dsimp
        apply congrArg
        exact Fact.out (p := Function.Injective i)
          (⟨i m, ⟨_, rfl⟩⟩ : LinearMap.range i).2.choose_spec.symm }

/-- Since every nonempty chain has a maximal element, by Zorn's lemma, there is a maximal
`extension_of i f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6dc775ddd648a4cd36760639741d1a62649ec6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

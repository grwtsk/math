# restrictRestrictAlgEquivMapHom_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 630,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90317979-2cad-1b25-76ef-fd7f73eccac0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c978238-79bc-f280-2dc4-68bdec1a9473",
  "kind": "theorem",
  "lexical_name": "restrictRestrictAlgEquivMapHom_surjective",
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
  "slug": "restrictrestrictalgequivmaphom-surjective--789f3167d84ea266b81910f8",
  "source": {
    "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 630,
    "path": "GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:789f3167d84ea266b81910f824869ba8cf6c6db730157719c8a80b4fba0d096e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c978238-79bc-f280-2dc4-68bdec1a9473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictRestrictAlgEquivMapHom_surjective [FiniteDimensional F K] [FiniteDimensional L E]
    [IsGalois L E] (h : K ⊓ L = ⊥) :
    Function.Surjective (restrictRestrictAlgEquivMapHom F K L E) := by
  suffices fixedField (restrictRestrictAlgEquivMapHom F K L E).range = ⊥ from
     MonoidHom.range_eq_top.mp <|
      fixingSubgroup_fixedField (restrictRestrictAlgEquivMapHom F K L E).range ▸
        this ▸ fixingSubgroup_bot
  refine eq_bot_iff.mpr fun ⟨x, hx₁⟩ hx₂ ↦ ?_
  obtain ⟨⟨y, hy⟩, rfl⟩ : x ∈ Set.range (algebraMap L E) := by
    refine mem_bot.mp <| (IsGalois.mem_bot_iff_fixed _).mpr fun φ ↦ ?_
    rw [← restrictRestrictAlgEquivMapHom_apply K L φ ⟨x, hx₁⟩]
    rw [mem_fixedField_iff] at hx₂
    exact congr_arg ((↑) : K → E) <| hx₂ (restrictRestrictAlgEquivMapHom F K L E φ) ⟨φ, rfl⟩
  obtain ⟨z, rfl⟩ : y ∈ (⊥ : IntermediateField F E) := h ▸ mem_inf.mpr ⟨hx₁, hy⟩
  exact mem_bot.mp ⟨z, rfl⟩

/-- If `K / E / k` is a field extension tower with `E / k` normal,
`L` is an intermediate field of `E / k`, then the fixing subgroup of `L` viewed as an
intermediate field of `K / k` is equal to the preimage of the fixing subgroup of `L` viewed as an
intermediate field of `E / k` under the natural map `Aut(K / k) → Aut(E / k)`
(`AlgEquiv.restrictNormalHom`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ac10c7ad01e8ad002ba01c8c19938fd816aa44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

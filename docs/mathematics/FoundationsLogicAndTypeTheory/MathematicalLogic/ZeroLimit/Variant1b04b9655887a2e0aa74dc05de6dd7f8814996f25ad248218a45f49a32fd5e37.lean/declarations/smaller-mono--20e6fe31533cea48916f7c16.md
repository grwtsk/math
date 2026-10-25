# smaller_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98e06c5e-f289-065d-33eb-29027e8d2890",
  "kind": "theorem",
  "lexical_name": "smaller_mono",
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
  "slug": "smaller-mono--20e6fe31533cea48916f7c16",
  "source": {
    "blob": "da8fc4ad74df7d44b6cb445257535fdda05abcf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant1b04b9655887a2e0aa74dc05de6dd7f8814996f25ad248218a45f49a32fd5e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e6fe31533cea48916f7c16416c915149a83cd1f47938f1f3fb7f3c77469f93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant1b04b9655887a2e0aa74dc05de6dd7f8814996f25ad248218a45f49a32fd5e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e06c5e-f289-065d-33eb-29027e8d2890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smaller_mono {o₁ o₂ : Ordinal} (h : o₁ ≤ o₂) : smaller C o₁ ⊆ smaller C o₂ := by
  rintro f ⟨g, hg, rfl⟩
  simp only [smaller, Set.mem_image]
  use πs' C h g
  obtain ⟨⟨l, gl⟩, rfl⟩ := hg
  refine ⟨?_, ?_⟩
  · use ⟨l, Products.isGood_mono C h gl⟩
    ext x
    rw [eval, ← Products.eval_πs' _ h (Products.prop_of_isGood C _ gl), eval]
  · rw [← LocallyConstant.coe_inj, coe_πs C o₂, ← LocallyConstant.toFun_eq_coe, coe_πs',
      Function.comp_assoc, projRestricts_comp_projRestrict C _, coe_πs]
    rfl

end GoodProducts

variable {o : Ordinal} (ho : Order.IsSuccLimit o)
include ho

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant1b04b9655887a2e0aa74dc05de6dd7f8814996f25ad248218a45f49a32fd5e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variant1b04b9655887a2e0aa74dc05de6dd7f8814996f25ad248218a45f49a32fd5e37.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8fc4ad74df7d44b6cb445257535fdda05abcf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

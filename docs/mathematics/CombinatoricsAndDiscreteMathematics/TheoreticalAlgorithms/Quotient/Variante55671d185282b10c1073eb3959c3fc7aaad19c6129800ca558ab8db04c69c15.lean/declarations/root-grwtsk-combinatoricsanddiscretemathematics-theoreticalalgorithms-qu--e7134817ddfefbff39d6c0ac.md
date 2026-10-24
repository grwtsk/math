# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuotientZmultiplesNatEquivZMod.Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.AddAction.orbitZmultiplesEquiv_symm_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e42405b-b4c3-4e96-3c84-46a38305c978",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuotientZmultiplesNatEquivZMod.Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.AddAction.orbitZmultiplesEquiv_symm_apply'",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-qu--e7134817ddfefbff39d6c0ac",
  "source": {
    "blob": "85272b65ea4933e14f37b9475dcaf7ebc1d45bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7134817ddfefbff39d6c0ac34390a63795414e070aec2986a832c61a493f011",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e42405b-b4c3-4e96-3c84-46a38305c978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuotientZmultiplesNatEquivZMod.Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.AddAction.orbitZmultiplesEquiv_symm_apply' {α β : Type*} [AddGroup α] (a : α)
    [AddAction α β] (b : β) (k : ℤ) :
    (AddAction.orbitZmultiplesEquiv a b).symm k =
      k • (⟨a, mem_zmultiples a⟩ : zmultiples a) +ᵥ ⟨b, AddAction.mem_orbit_self b⟩ := by
  rw [AddAction.orbit_zmultiples_equiv_symm_apply, ZMod.coe_int_cast]
  -- porting note: times out without `a b` explicit
  exact Subtype.ext (zsmul_vadd_mod_minimalPeriod a b k)
#align add_action.orbit_zmultiples_equiv_symm_apply' AddAction.orbitZmultiplesEquiv_symm_apply'

attribute [to_additive existing AddAction.orbitZmultiplesEquiv_symm_apply']
  orbitZpowersEquiv_symm_apply'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85272b65ea4933e14f37b9475dcaf7ebc1d45bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

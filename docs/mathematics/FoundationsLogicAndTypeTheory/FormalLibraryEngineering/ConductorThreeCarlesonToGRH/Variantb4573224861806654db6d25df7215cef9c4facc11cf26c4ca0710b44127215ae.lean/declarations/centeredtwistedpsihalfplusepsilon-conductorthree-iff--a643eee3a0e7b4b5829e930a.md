# centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0f38fbb-e8de-7bfa-3439-43dd7c0cccec",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff",
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
  "slug": "centeredtwistedpsihalfplusepsilon-conductorthree-iff--a643eee3a0e7b4b5829e930a",
  "source": {
    "blob": "7e292393c93af257dcb6cad797da5ea5fe5bc56d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantb4573224861806654db6d25df7215cef9c4facc11cf26c4ca0710b44127215ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a643eee3a0e7b4b5829e930a4078b1dd5dcdb8e6c3f9b75304c4d0b1ed2ee9a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantb4573224861806654db6d25df7215cef9c4facc11cf26c4ca0710b44127215ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f38fbb-e8de-7bfa-3439-43dd7c0cccec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff :
    CenteredTwistedPsiHalfPlusEpsilon conductorThreeCharacter ↔
      TwistedPsiHalfPlusEpsilon := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    have hxBound := hBound x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs] at hxBound
    exact hxBound
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs]
    exact hBound x hx

/-- The generic and existing conductor-three GRH predicates are literally
the same zero-location statement. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantb4573224861806654db6d25df7215cef9c4facc11cf26c4ca0710b44127215ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantb4573224861806654db6d25df7215cef9c4facc11cf26c4ca0710b44127215ae.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e292393c93af257dcb6cad797da5ea5fe5bc56d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# whiskerIsBilimitIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb4ee1ddd7e19eaae714d02165b21a6afcd7f8e79853e2404c681ec2cb48e99",
  "kind": "def",
  "lexical_name": "whiskerIsBilimitIff",
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
  "slug": "whiskerisbilimitiff--42e65a3302e3177cfaefd4ae",
  "source": {
    "blob": "5025feec3aa817b3640b6ff4094467067542d2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 294,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42e65a3302e3177cfaefd4aef3c0251e81c103a5ccd9ca9c9feded9fbe2c5073",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb4ee1ddd7e19eaae714d02165b21a6afcd7f8e79853e2404c681ec2cb48e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def whiskerIsBilimitIff {f : J → C} (c : Bicone f) (g : K ≃ J) :
    (c.whisker g).IsBilimit ≃ c.IsBilimit := by
  refine equivOfSubsingletonOfSubsingleton (fun hc => ⟨?_, ?_⟩) fun hc => ⟨?_, ?_⟩
  · let := IsLimit.ofIsoLimit hc.isLimit (Bicone.whiskerToCone c g)
    let := (IsLimit.postcomposeHomEquiv (Discrete.functorComp f g).symm _) this
    exact IsLimit.ofWhiskerEquivalence (Discrete.equivalence g) this
  · let := IsColimit.ofIsoColimit hc.isColimit (Bicone.whiskerToCocone c g)
    let := (IsColimit.precomposeHomEquiv (Discrete.functorComp f g) _) this
    exact IsColimit.ofWhiskerEquivalence (Discrete.equivalence g) this
  · apply IsLimit.ofIsoLimit _ (Bicone.whiskerToCone c g).symm
    apply (IsLimit.postcomposeHomEquiv (Discrete.functorComp f g).symm _).symm _
    exact IsLimit.whiskerEquivalence hc.isLimit (Discrete.equivalence g)
  · apply IsColimit.ofIsoColimit _ (Bicone.whiskerToCocone c g).symm
    apply (IsColimit.precomposeHomEquiv (Discrete.functorComp f g) _).symm _
    exact IsColimit.whiskerEquivalence hc.isColimit (Discrete.equivalence g)

end Whisker

end Bicone

/-- A bicone over `F : J → C`, which is both a limit cone and a colimit cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5025feec3aa817b3640b6ff4094467067542d2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

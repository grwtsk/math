# isLeftAdjoint_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c42f5b73-e82d-30fd-50bc-188eec9cebbd",
  "kind": "theorem",
  "lexical_name": "isLeftAdjoint_TFAE",
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
  "slug": "isleftadjoint-tfae--10a5037d53747d6f9803b8b4",
  "source": {
    "blob": "e31bb968221f2c0d15705671e772c0607b9745cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a5037d53747d6f9803b8b4dce7d62c235dff470ce947251a6dcb278f80566e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42f5b73-e82d-30fd-50bc-188eec9cebbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLeftAdjoint_TFAE (f : a ⟶ b) :
    List.TFAE [
      IsLeftAdjoint f,
      HasAbsLeftKanExtension f (𝟙 a),
      ∃ _ : HasLeftKanExtension f (𝟙 a), Lan.CommuteWith f (𝟙 a) f] := by
  tfae_have 1 → 2
  | h => IsAbsKan.hasAbsLeftKanExtension (Adjunction.ofIsLeftAdjoint f).isAbsoluteLeftKan
  tfae_have 2 → 3
  | h => ⟨inferInstance, inferInstance⟩
  tfae_have 3 → 1
  | ⟨h, h'⟩ => .mk <| (lanIsKan f (𝟙 a)).adjunction <| Lan.CommuteWith.isKan f (𝟙 a) f
  tfae_finish

end LeftExtension

section LeftLift

open LeftLift

/-- For an adjuntion `f ⊣ u`, `f` is an absolute left Kan lift of the identity along `u`.
The unit of this Kan lift is given by the unit of the adjunction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31bb968221f2c0d15705671e772c0607b9745cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

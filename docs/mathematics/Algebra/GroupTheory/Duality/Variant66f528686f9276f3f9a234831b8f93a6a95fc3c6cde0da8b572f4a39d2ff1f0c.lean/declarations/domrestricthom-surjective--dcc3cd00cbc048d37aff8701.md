# domRestrictHom_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17b72523-ceaa-c703-6850-ef088bdd37a8",
  "kind": "theorem",
  "lexical_name": "domRestrictHom_surjective",
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
  "slug": "domrestricthom-surjective--dcc3cd00cbc048d37aff8701",
  "source": {
    "blob": "fb95ac3e0d723ed195d2d352ec4c4f1b45083f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcc3cd00cbc048d37aff870161d9971534e90902bc20ccc28524cb58b817abe4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b72523-ceaa-c703-6850-ef088bdd37a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrictHom_surjective (N : Submonoid M) :
    Function.Surjective (MulChar.domRestrictHom N R) := by
  intro χ
  obtain ⟨ψ, hψ⟩ := (χ.toUnitHom.comp N.unitsEquivUnitsType).domRestrict_surjective R N.units
  refine ⟨MulChar.ofUnitHom ψ, ext fun _ ↦ ?_⟩
  rw [MonoidHom.domRestrictHom_apply] at hψ
  rw [domRestrictHom_apply, domRestrict_ofUnitHom]
  simp [hψ]

@[deprecated (since := "2026-07-19")] alias restrictHom_surjective := domRestrictHom_surjective

/-- The `MulEquiv` between the double dual `MulChar (MulChar M R) R` of `M` and `Mˣ`.
The image `m` of `η : MulChar (MulChar M R) R` is such that, for all `R`-valued multiplicative
character `χ` of `M`, we have `χ m = η χ`, see `MulChar.apply_mulCharEquiv`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb95ac3e0d723ed195d2d352ec4c4f1b45083f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

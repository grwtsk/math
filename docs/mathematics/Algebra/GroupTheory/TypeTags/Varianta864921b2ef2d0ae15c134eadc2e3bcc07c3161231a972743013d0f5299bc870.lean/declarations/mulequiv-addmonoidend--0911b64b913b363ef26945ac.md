# MulEquiv.addMonoidEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:111322b9a9d726105b00f39379a86517af78d55832badc0eec3f4acf09981e34",
  "kind": "def",
  "lexical_name": "MulEquiv.addMonoidEnd",
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
  "slug": "mulequiv-addmonoidend--0911b64b913b363ef26945ac",
  "source": {
    "blob": "f6d0560328a120f98dcd68329d146060c9ba502e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0911b64b913b363ef26945accf232051ab2b9a91fafa6733ee922e40d6a9abf8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:111322b9a9d726105b00f39379a86517af78d55832badc0eec3f4acf09981e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def MulEquiv.addMonoidEnd (A : Type*) [AddZeroClass A] :
    AddMonoid.End A ≃* Monoid.End (Multiplicative A) :=
  { AddMonoidHom.toMultiplicative with
    map_mul' := fun _ _ => rfl }

@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive := MulEquiv.monoidEnd
@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive_apply_apply :=
  MulEquiv.monoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive_symm_apply_apply :=
  MulEquiv.monoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative := MulEquiv.addMonoidEnd
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative_apply_apply :=
  MulEquiv.addMonoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative_symm_apply_apply :=
  MulEquiv.addMonoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End := MulEquiv.monoidEnd
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End_apply_apply :=
  MulEquiv.monoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End_symm_apply_apply :=
  MulEquiv.monoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End := MulEquiv.addMonoidEnd
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End_apply_apply :=
  MulEquiv.addMonoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End_symm_apply_apply :=
  MulEquiv.addMonoidEnd_symm_apply_apply

/-- `Multiplicative (∀ i : ι, K i)` is equivalent to `∀ i : ι, Multiplicative (K i)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6d0560328a120f98dcd68329d146060c9ba502e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

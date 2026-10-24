# finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7693e178-2e78-8c14-7201-476b539871c7",
  "kind": "lemma",
  "lexical_name": "finite_residueField",
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
  "slug": "finite-residuefield--517308c38cb40a358fe70d13",
  "source": {
    "blob": "94f914666f91dcb8574ec13add3fd8b912babef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517308c38cb40a358fe70d1367cacfb791980c845f9361a5c62aa27c945c99d1",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7693e178-2e78-8c14-7201-476b539871c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_residueField
    [p.IsPrime] [q.LiesOver p] [WeaklyQuasiFiniteAt R q]
    [Algebra (Localization.AtPrime p) (Localization.AtPrime q)]
    [IsScalarTower R (Localization.AtPrime p) (Localization.AtPrime q)] :
    Module.Finite p.ResidueField q.ResidueField := by
  let r := q.map (Ideal.Quotient.mk ((q.under R).map (algebraMap R S)))
  have : r.LiesOver q :=
    ⟨.trans (by simp [← RingHom.ker_eq_comap_bot, Ideal.map_comap_le])
    (Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective _).symm⟩
  let := Localization.AtPrime.algebraOfLiesOver q r
  have : r.LiesOver p := .trans _ q _
  let := Localization.AtPrime.algebraOfLiesOver p r
  exact .of_injective (IsScalarTower.toAlgHom _ _ r.ResidueField).toLinearMap (RingHom.injective _)

/-- By `infer_instance` for `Algebra.QuasiFiniteAt R p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f914666f91dcb8574ec13add3fd8b912babef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

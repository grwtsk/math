# finite_quotient_of_pretransitive_of_finite_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbcfdd1e5a86f0cc49b4590530a1c895647686b963161f1ccae908e46b5aab28",
  "kind": "instance",
  "lexical_name": "finite_quotient_of_pretransitive_of_finite_quotient",
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
  "slug": "finite-quotient-of-pretransitive-of-finite-quotient--4add24616a9ad6cf0778af8c",
  "source": {
    "blob": "b995dc7840811a377de242c064c81d7240b30073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 295,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4add24616a9ad6cf0778af8c7b3769264dc005abccb00a362c0611102b9c4b24",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbcfdd1e5a86f0cc49b4590530a1c895647686b963161f1ccae908e46b5aab28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finite_quotient_of_pretransitive_of_finite_quotient [IsPretransitive α β] {H : Subgroup α}
    [Finite (α ⧸ H)] : Finite <| orbitRel.Quotient H β := by
  rcases isEmpty_or_nonempty β with he | ⟨⟨b⟩⟩
  · exact Quotient.finite _
  · have h' : Finite (Quotient (rightRel H)) :=
      Finite.of_equiv _ (quotientRightRelEquivQuotientLeftRel _).symm
    let f : Quotient (rightRel H) → orbitRel.Quotient H β :=
      fun a ↦ Quotient.liftOn' a (fun g ↦ ⟦g • b⟧) fun g₁ g₂ r ↦ by
        replace r := Setoid.symm' _ r
        rw [rightRel_eq] at r
        simp only [Quotient.eq, orbitRel_apply, mem_orbit_iff]
        exact ⟨⟨g₁ * g₂⁻¹, r⟩, by simp [mul_smul]⟩
    exact Finite.of_surjective f ((Quotient.surjective_liftOn' _).2
      (Quotient.mk''_surjective.comp (MulAction.surjective_smul _ _)))

variable {β} in
/-- A bijection between the quotient of the action of a subgroup `H` on an orbit, and a
corresponding quotient expressed in terms of `Setoid.comap Subtype.val`. -/
@[to_additive "A bijection between the quotient of the action of an additive subgroup `H` on an
orbit, and a corresponding quotient expressed in terms of `Setoid.comap Subtype.val`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b995dc7840811a377de242c064c81d7240b30073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

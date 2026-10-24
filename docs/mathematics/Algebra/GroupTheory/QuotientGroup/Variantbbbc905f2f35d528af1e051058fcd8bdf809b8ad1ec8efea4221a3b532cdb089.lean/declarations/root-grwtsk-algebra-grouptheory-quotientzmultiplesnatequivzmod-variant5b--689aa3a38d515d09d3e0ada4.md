# _root_.GRWTSK.Algebra.GroupTheory.QuotientZMultiplesNatEquivZMod.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.AddAction.orbitZMultiplesEquiv_symm_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d61ab14-238c-8140-2a88-4d35b95a715a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.QuotientZMultiplesNatEquivZMod.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.AddAction.orbitZMultiplesEquiv_symm_apply'",
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
  "slug": "root-grwtsk-algebra-grouptheory-quotientzmultiplesnatequivzmod-variant5b--689aa3a38d515d09d3e0ada4",
  "source": {
    "blob": "ba820cb38e5d13c549666f5374f87bcddde3ea79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689aa3a38d515d09d3e0ada4e49a1f8f29d86966d4a9877a2280be96b08a0881",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d61ab14-238c-8140-2a88-4d35b95a715a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.QuotientZMultiplesNatEquivZMod.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.AddAction.orbitZMultiplesEquiv_symm_apply' {α β : Type*} [AddGroup α] (a : α)
    [AddAction α β] (b : β) (k : ℤ) :
    (AddAction.orbitZMultiplesEquiv a b).symm k =
      k • (⟨a, mem_zmultiples a⟩ : zmultiples a) +ᵥ ⟨b, AddAction.mem_orbit_self b⟩ := by
  rw [AddAction.orbitZMultiplesEquiv_symm_apply, ZMod.coe_intCast]
  -- Making `a` explicit turns this from ~190000 heartbeats to ~700.
  exact Subtype.ext (zsmul_vadd_mod_minimalPeriod a _ k)

attribute [to_additive existing]
  orbitZPowersEquiv_symm_apply'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba820cb38e5d13c549666f5374f87bcddde3ea79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

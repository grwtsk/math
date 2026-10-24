# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39e1f25fd76c5e439481e076c396e6cc612172772ab94a3c02e6633586a717fe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--645aa302e0272ee2b32b3f4c",
  "source": {
    "blob": "c569d09c515c6fffe096a79d566088e712e5a0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 165,
    "path": "GRWTSK/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:645aa302e0272ee2b32b3f4caa43349ccde52bdacb00c35e1943fd5fa037cc7b",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39e1f25fd76c5e439481e076c396e6cc612172772ab94a3c02e6633586a717fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsLocalRing R] : IsLocalRing (MvPowerSeries σ R) :=
  IsLocalRing.of_isUnit_or_isUnit_one_sub_self <| by
    intro φ
    obtain ⟨u, h⟩ | ⟨u, h⟩ := IsLocalRing.isUnit_or_isUnit_one_sub_self (constantCoeff σ R φ) <;>
        [left; right] <;>
      · refine isUnit_of_mul_eq_one _ _ (mul_invOfUnit _ u ?_)
        simpa using h.symm

-- TODO(jmc): once adic topology lands, show that this is complete
end CommRing

section IsLocalRing

variable {S : Type*} [CommRing R] [CommRing S] (f : R →+* S) [IsLocalHom f]

-- Thanks to the linter for informing us that this instance does
-- not actually need R and S to be local rings!
/-- The map between multivariate formal power series over the same indexing set
induced by a local ring hom `A → B` is local -/
@[instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c569d09c515c6fffe096a79d566088e712e5a0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

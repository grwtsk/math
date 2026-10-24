# mkQ_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0c99fc2-c588-1e08-339e-8640cfa702b4",
  "kind": "theorem",
  "lexical_name": "mkQ_surjective",
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
  "slug": "mkq-surjective--30edaa2e71b8165481c7951d",
  "source": {
    "blob": "df8dfca9e987754281a4a07ec09403dc339dff95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30edaa2e71b8165481c7951d78dbdd44bb2bb54367c73fbb9d64ccc6096f592e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c99fc2-c588-1e08-339e-8640cfa702b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkQ_surjective : Function.Surjective p.mkQ := by
  rintro ⟨x⟩; exact ⟨x, rfl⟩

end

variable {R₂ M₂ : Type*} [Ring R₂] [AddCommGroup M₂] [Module R₂ M₂] {τ₁₂ : R →+* R₂}

/-- Two `LinearMap`s from a quotient module are equal if their compositions with
`submodule.mkQ` are equal.

See note [partially-applied ext lemmas]. -/
@[ext 1100] -- Porting note: increase priority so this applies before `LinearMap.ext`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df8dfca9e987754281a4a07ec09403dc339dff95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

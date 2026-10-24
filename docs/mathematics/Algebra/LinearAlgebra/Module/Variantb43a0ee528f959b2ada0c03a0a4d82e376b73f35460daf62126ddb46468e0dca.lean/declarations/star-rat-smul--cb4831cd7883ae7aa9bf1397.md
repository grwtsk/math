# star_rat_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f968dc8-1f93-8d64-fd6f-6c2ca8d234ab",
  "kind": "theorem",
  "lexical_name": "star_rat_smul",
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
  "slug": "star-rat-smul--cb4831cd7883ae7aa9bf1397",
  "source": {
    "blob": "a5f4c3d10b26d81d6a5556fbc55840c232ccab1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb4831cd7883ae7aa9bf1397ea27634894cced128483b6e81e8b2402d607e3f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f968dc8-1f93-8d64-fd6f-6c2ca8d234ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_rat_smul {R : Type*} [AddCommGroup R] [StarAddMonoid R] [Module ℚ R] (x : R) (n : ℚ) :
    star (n • x) = n • star x :=
  map_rat_smul (starAddEquiv : R ≃+ R) _ _
#align star_rat_smul star_rat_smul

end SmulLemmas

/-- If `A` is a module over a commutative `R` with compatible actions,
then `star` is a semilinear equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f4c3d10b26d81d6a5556fbc55840c232ccab1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

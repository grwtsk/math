# ExplicitDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eb58cdd2b014fe22f1d73c06356f2aa72908dfdb976211a50be2c15400f90ca",
  "kind": "class",
  "lexical_name": "ExplicitDisjoint",
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
  "slug": "explicitdisjoint--a1b4646388ce5047510c32c2",
  "source": {
    "blob": "b9995c77567f208759a87bce53bd7417b2569062",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1b4646388ce5047510c32c2861251ae3a2c7f85ea5b846b2430bac9a6529c83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eb58cdd2b014fe22f1d73c06356f2aa72908dfdb976211a50be2c15400f90ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ExplicitDisjoint (t : Finset (α × β × γ)) : Prop where
  inj₀ : ∀ ⦃a b c a'⦄, (a, b, c) ∈ t → (a', b, c) ∈ t → a = a'
  inj₁ : ∀ ⦃a b c b'⦄, (a, b, c) ∈ t → (a, b', c) ∈ t → b = b'
  inj₂ : ∀ ⦃a b c c'⦄, (a, b, c) ∈ t → (a, b, c') ∈ t → c = c'

/-- Predicate on the triangle indices for there to be no accidental triangle.

Note that we cheat a bit, since the exact translation of this informal description would have
`(a', b', c') ∈ t` as a conclusion rather than `a = a' ∨ b = b' ∨ c = c'`. Those conditions are
equivalent when the explicit triangles are edge-disjoint (which is the case we care about). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9995c77567f208759a87bce53bd7417b2569062` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

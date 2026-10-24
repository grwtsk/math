# SkyscraperPresheafFunctor.map'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8aabbf3-c451-4345-a5b2-6c63f31f67cd",
  "kind": "theorem",
  "lexical_name": "SkyscraperPresheafFunctor.map'_comp",
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
  "slug": "skyscraperpresheaffunctor-map-comp--727c626750b224ed6c1a3d79",
  "source": {
    "blob": "835519002b6873369663293e0290c33728e6bc14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:727c626750b224ed6c1a3d79da1a506bac818782c2ded731aa723f8b695f5d6d",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8aabbf3-c451-4345-a5b2-6c63f31f67cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SkyscraperPresheafFunctor.map'_comp {a b c : C} (f : a ⟶ b) (g : b ⟶ c) :
    SkyscraperPresheafFunctor.map' p₀ (f ≫ g) =
      SkyscraperPresheafFunctor.map' p₀ f ≫ SkyscraperPresheafFunctor.map' p₀ g := by
  ext U
  simp only [SkyscraperPresheafFunctor.map'_app, NatTrans.comp_app]
  split_ifs with h <;> aesop_cat

/-- Taking skyscraper presheaf at a point is functorial: `c ↦ skyscraper p₀ c` defines a functor by
sending every `f : a ⟶ b` to the natural transformation `α` defined as: `α(U) = f : a ⟶ b` if
`p₀ ∈ U` and the unique morphism to a terminal object in `C` if `p₀ ∉ U`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `835519002b6873369663293e0290c33728e6bc14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

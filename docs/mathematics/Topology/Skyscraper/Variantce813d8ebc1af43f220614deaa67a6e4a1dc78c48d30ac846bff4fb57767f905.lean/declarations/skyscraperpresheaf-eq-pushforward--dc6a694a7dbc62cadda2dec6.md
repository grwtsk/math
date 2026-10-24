# skyscraperPresheaf_eq_pushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4531a3c8-22a8-3092-53fd-a378336638cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ea327be-7945-28ba-a16b-3b34e269ab18",
  "kind": "theorem",
  "lexical_name": "skyscraperPresheaf_eq_pushforward",
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
  "slug": "skyscraperpresheaf-eq-pushforward--dc6a694a7dbc62cadda2dec6",
  "source": {
    "blob": "64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6a694a7dbc62cadda2dec631bde61a6d1ad732059ab5ffbf6552338ad37531",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea327be-7945-28ba-a16b-3b34e269ab18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skyscraperPresheaf_eq_pushforward
    [hd : ∀ U : Opens (TopCat.of PUnit.{u + 1}), Decidable (PUnit.unit ∈ U)] :
    skyscraperPresheaf p₀ A =
      (ofHom (ContinuousMap.const (TopCat.of PUnit) p₀)) _*
        skyscraperPresheaf (X := TopCat.of PUnit) PUnit.unit A := by
  convert_to @skyscraperPresheaf X p₀ (fun U => hd <| (Opens.map <| ofHom <|
      ContinuousMap.const _ p₀).obj U)
    C _ _ A = _ <;> congr

/-- Taking skyscraper presheaf at a point is functorial: `c ↦ skyscraper p₀ c` defines a functor by
sending every `f : a ⟶ b` to the natural transformation `α` defined as: `α(U) = f : a ⟶ b` if
`p₀ ∈ U` and the unique morphism to a terminal object in `C` if `p₀ ∉ U`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

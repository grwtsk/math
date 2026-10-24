# germ_fromStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ff51fc3-e5f2-df71-d99a-cd235aadd927",
  "kind": "lemma",
  "lexical_name": "germ_fromStalk",
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
  "slug": "germ-fromstalk--3133b85cabdade36ecc1d5db",
  "source": {
    "blob": "835519002b6873369663293e0290c33728e6bc14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 293,
    "path": "GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3133b85cabdade36ecc1d5dba59c1a01e45c589a24feb10b0deefe567d365b34",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff51fc3-e5f2-df71-d99a-cd235aadd927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma germ_fromStalk {𝓕 : Presheaf C X} {c : C} (f : 𝓕 ⟶ skyscraperPresheaf p₀ c) (U) (hU) :
    𝓕.germ U p₀ hU ≫ fromStalk p₀ f = f.app (op U) ≫ eqToHom (if_pos hU) :=
  colimit.ι_desc _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `835519002b6873369663293e0290c33728e6bc14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# effectiveEpi_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fae0eb0-eb29-9f61-82b5-999d6294a9ba",
  "kind": "theorem",
  "lexical_name": "effectiveEpi_tfae",
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
  "slug": "effectiveepi-tfae--49fda750e76e17eb3ec534c5",
  "source": {
    "blob": "ccfdf7bcb9956468688cef3385d809d705a6c245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fda750e76e17eb3ec534c50a732c769a9055470bb8535383c4b1e9c409d942",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fae0eb0-eb29-9f61-82b5-999d6294a9ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpi_tfae
    {B X : CompHaus.{u}} (π : X ⟶ B) :
    TFAE
    [ EffectiveEpi π
    , Epi π
    , Function.Surjective π
    ] := by
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 2 ↔ 3 := epi_iff_surjective π
  tfae_have 3 → 1 := fun hπ ↦ ⟨⟨effectiveEpiStruct π hπ⟩⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfdf7bcb9956468688cef3385d809d705a6c245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# cfc_map_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ac8620-7300-0026-3bf1-851727ca3e10",
  "kind": "lemma",
  "lexical_name": "cfc_map_prod",
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
  "slug": "cfc-map-prod--d14a96109c47fe96a320cb2c",
  "source": {
    "blob": "8b5b47cbad99167804935e812ddde0d06ff67d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14a96109c47fe96a320cb2cf2d347d8a1816f68c199deb6f653fbb2218ae6d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ac8620-7300-0026-3bf1-851727ca3e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_map_prod (f : R → R) (a : A) (b : B)
    (hf : ContinuousOn f (spectrum R a ∪ spectrum R b) := by cfc_cont_tac)
    (hab : pab (a, b) := by cfc_tac) (ha : pa a := by cfc_tac) (hb : pb b := by cfc_tac) :
    cfc f (a, b) = (cfc f a, cfc f b) := by
  ext
  case fst =>
    let φ := StarAlgHom.fst S A B
    exact φ.map_cfc f (a, b) (by rwa [Prod.spectrum_eq]) continuous_fst hab ha
  case snd =>
    let φ := StarAlgHom.snd S A B
    exact φ.map_cfc f (a, b) (by rwa [Prod.spectrum_eq]) continuous_snd hab hb

end unital_prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5b47cbad99167804935e812ddde0d06ff67d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

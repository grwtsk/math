# ltTopHomeomorphNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca295121dbb7c54b1b26cbab30d35cb18454105a1234f09a11c0cef80a1d3eb7",
  "kind": "def",
  "lexical_name": "ltTopHomeomorphNNReal",
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
  "slug": "lttophomeomorphnnreal--fd7af26d6782fc747ba37407",
  "source": {
    "blob": "fc556a2f6999b6b174e20b623d4cd1bc49508f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7af26d6782fc747ba37407d015d75979fa9f89905c4b780e20a87e7460121a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca295121dbb7c54b1b26cbab30d35cb18454105a1234f09a11c0cef80a1d3eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ltTopHomeomorphNNReal : { a | a < ∞ } ≃ₜ ℝ≥0 := by
  refine' (Homeomorph.setCongr _).trans neTopHomeomorphNNReal
  simp only [mem_setOf_eq, lt_top_iff_ne_top]
#align ennreal.lt_top_homeomorph_nnreal ENNReal.ltTopHomeomorphNNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc556a2f6999b6b174e20b623d4cd1bc49508f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# giCountNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:881ee90b00587bf4685aed1bd256f0c4079b9ec4684de2f3790d25cedf3e8032",
  "kind": "def",
  "lexical_name": "giCountNth",
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
  "slug": "gicountnth--a9bcf9036e3c3002cc9293ec",
  "source": {
    "blob": "2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9bcf9036e3c3002cc9293ecee43de1593d221c1de903cc704f8d75da3edd6ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:881ee90b00587bf4685aed1bd256f0c4079b9ec4684de2f3790d25cedf3e8032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def giCountNth (hp : (Set.ofPred p).Infinite) : GaloisInsertion (count p) (nth p) :=
  GaloisInsertion.monotoneIntro (nth_monotone hp) (count_monotone p) (le_nth_count hp)
    (count_nth_of_infinite hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

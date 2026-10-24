# unnormalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bce23a4904510ad8fc7cc19096a68909c319898937341d03d0600ef414f97ffa",
  "kind": "def",
  "lexical_name": "unnormalized",
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
  "slug": "unnormalized--c5ef2ca08bd034138e2227a5",
  "source": {
    "blob": "e413926285646651a15a4be4c6be333e54ca86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5ef2ca08bd034138e2227a57b0325c178b9b9e4dc221514dd23018b3bcab16a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bce23a4904510ad8fc7cc19096a68909c319898937341d03d0600ef414f97ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unnormalized (a : ℝ) (ha : 0 < a) (f : PositiveL2) : PositiveL2 :=
  (unnormalizedFunc_memLp ha (Lp.memLp f)).toLp (unnormalizedFunc a f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e413926285646651a15a4be4c6be333e54ca86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

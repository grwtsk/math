# ClosesAfterCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a429c990fae4105f5faa5e6e49017aa6ca98d271020fade81ce46ca9041299cd",
  "kind": "def",
  "lexical_name": "ClosesAfterCircuit",
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
  "slug": "closesaftercircuit--52fafc5b5c205bde7b708797",
  "source": {
    "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 315,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52fafc5b5c205bde7b7087976e0fb1cad8c0ef2e7a825f35d932a10a4d496a6e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a429c990fae4105f5faa5e6e49017aa6ca98d271020fade81ce46ca9041299cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ClosesAfterCircuit (system : StepSystem h)
    (p : CoverPhase h) (x : Fiber3) : Prop :=
  system.forwardProduct p (cycleLength h) x = x

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

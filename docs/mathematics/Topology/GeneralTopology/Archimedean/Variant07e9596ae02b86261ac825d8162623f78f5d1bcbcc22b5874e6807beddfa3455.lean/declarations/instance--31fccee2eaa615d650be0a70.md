# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f8f24a26c8fdc84678f765334c424ece4de90fe4ae22b2a64dc032e2a4e3cbe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--31fccee2eaa615d650be0a70",
  "source": {
    "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31fccee2eaa615d650be0a70060b55d0b21e79e17b14a93117cab9a3b8d59966",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f8f24a26c8fdc84678f765334c424ece4de90fe4ae22b2a64dc032e2a4e3cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) atBot_isCountablyGenerated_of_archimedean
    [Ring R] [PartialOrder R] [IsOrderedRing R]
    [Archimedean R] : (atBot : Filter R).IsCountablyGenerated :=
  atBot_hasCountableBasis_of_archimedean.isCountablyGenerated

namespace Filter

variable {l : Filter α} {f : α → R} {r : R}

section LinearOrderedSemiring

variable [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] [Archimedean R]

/-- If a function tends to infinity along a filter, then this function multiplied by a positive
constant (on the left) also tends to infinity. The archimedean assumption is convenient to get a
statement that works on `ℕ`, `ℤ` and `ℝ`, although not necessary (a version in ordered fields is
given in `Filter.Tendsto.const_mul_atTop`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1f6ffed91ae0a51f0d70fde5c791349f1e507c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

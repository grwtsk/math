# ordinaryHypergeometricSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de3e23228d2faa8beb8041fc571d0ec4c027b26803d60221d4a1fef282bd9c1",
  "kind": "def",
  "lexical_name": "ordinaryHypergeometricSeries",
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
  "slug": "ordinaryhypergeometricseries--1cb08b75c03d662f0f175c7b",
  "source": {
    "blob": "1bf6b82005beedebd1d6b469133a65a3334cfcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cb08b75c03d662f0f175c7b2e7fbd34af46116be842867cc166f82525f5f884",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de3e23228d2faa8beb8041fc571d0ec4c027b26803d60221d4a1fef282bd9c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ordinaryHypergeometricSeries (a b c : 𝕂) : FormalMultilinearSeries 𝕂 𝔸 𝔸 :=
  ofScalars 𝔸 (ordinaryHypergeometricCoefficient a b c)

variable {𝔸} (a b c : 𝕂)

/-- `ordinaryHypergeometric (a b c : 𝕂) : 𝔸 → 𝔸`, denoted `₂F₁`, is the ordinary hypergeometric map,
defined as the sum of the `FormalMultilinearSeries` `ordinaryHypergeometricSeries 𝔸 a b c`.

Note that this takes the junk value `0` outside the radius of convergence and for the poles.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6b82005beedebd1d6b469133a65a3334cfcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

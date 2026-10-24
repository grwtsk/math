# RawPacking.Survives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a06e32ea65529144a58fc212a754706af5bda5afacfb15f40a4ca3dce319f32c",
  "kind": "def",
  "lexical_name": "RawPacking.Survives",
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
  "slug": "rawpacking-survives--2f82508dcefa7b51fc9efc64",
  "source": {
    "blob": "8951a5a0ae8990bc7a8ad2cf9f96ac8525e8df8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f82508dcefa7b51fc9efc64ecd8e4a64701542342100264ce28212ce4cf9829",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a06e32ea65529144a58fc212a754706af5bda5afacfb15f40a4ca3dce319f32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RawPacking.Survives (P : RawPacking) (n : ℤ) : Prop :=
  P.r = 0 ∨ ∀ p, p ≤ P.y → p.Prime → ∀ h ∈ P.pattern, ¬(p : ℤ) ∣ n + h

/-- A translated bounded classification object, distinct from residue geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8951a5a0ae8990bc7a8ad2cf9f96ac8525e8df8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

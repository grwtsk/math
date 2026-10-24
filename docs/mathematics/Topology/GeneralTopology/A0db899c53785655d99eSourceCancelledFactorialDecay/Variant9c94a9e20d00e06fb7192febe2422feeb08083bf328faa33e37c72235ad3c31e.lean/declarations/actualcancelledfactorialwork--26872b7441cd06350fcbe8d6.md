# actualCancelledFactorialWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af2d65c0b456cbf60cf50ec774b1d5fa02e6217ec68f03455c5a72aa9afb7fcd",
  "kind": "def",
  "lexical_name": "actualCancelledFactorialWork",
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
  "slug": "actualcancelledfactorialwork--26872b7441cd06350fcbe8d6",
  "source": {
    "blob": "8112b0758f2e3069200d65013d2b3b65ac3477a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26872b7441cd06350fcbe8d649dc44a325b10328944f23375538cb3837dd91b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af2d65c0b456cbf60cf50ec774b1d5fa02e6217ec68f03455c5a72aa9afb7fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCancelledFactorialWork (A : ℝ) : ℝ :=
  ∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
    ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)

/-- Quantitative logarithmic envelope keeps the complete actual floor cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8112b0758f2e3069200d65013d2b3b65ac3477a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

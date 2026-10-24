# actualNormalizedCriticalEarlyBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d1faf01bd09e9124be2e9ef0663dc4f3e2adfee658122ffa7d55328f088304",
  "kind": "def",
  "lexical_name": "actualNormalizedCriticalEarlyBudget",
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
  "slug": "actualnormalizedcriticalearlybudget--aa35bd0baa2d3ab2ceff8067",
  "source": {
    "blob": "f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa35bd0baa2d3ab2ceff806775ed5b0de72bc6bd1ff9a15054d039c1fcf0a7a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d1faf01bd09e9124be2e9ef0663dc4f3e2adfee658122ffa7d55328f088304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualNormalizedCriticalEarlyBudget (T A : ℝ) : ℝ :=
  |actualEarlyCriticalErrorCenter T| * (A ^ 4 * Real.exp (-A)) +
    (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)) *
      (A ^ 2 * Real.exp (-A))

/-- The complete finite early source has its literal normalized fourth/second-power budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

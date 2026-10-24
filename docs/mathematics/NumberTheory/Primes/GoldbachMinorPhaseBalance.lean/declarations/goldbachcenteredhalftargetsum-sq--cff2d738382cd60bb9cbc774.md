# goldbachCenteredHalfTargetSum_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32573b86-7433-e44f-ec88-e0f724b34b52",
  "kind": "theorem",
  "lexical_name": "goldbachCenteredHalfTargetSum_sq",
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
  "slug": "goldbachcenteredhalftargetsum-sq--cff2d738382cd60bb9cbc774",
  "source": {
    "blob": "f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff2d738382cd60bb9cbc774057cccd7ec3fa30dd4939f929a3cfcda2f52d240",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32573b86-7433-e44f-ec88-e0f724b34b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCenteredHalfTargetSum_sq (n : ℕ) (x : ℝ) :
    goldbachCenteredHalfTargetSum n x ^ 2 = goldbachCircleIntegrand (2 * n) x := by
  have hphase : unitCharacter (-(n : ℤ)) x * unitCharacter (-(n : ℤ)) x =
      unitCharacter (-((2 * n : ℕ) : ℤ)) x := by
    rw [← unitCharacter_add]
    congr 1
    push_cast
    ring
  unfold goldbachCenteredHalfTargetSum goldbachCircleIntegrand
  calc
    (goldbachExponentialSum (2 * n) x * unitCharacter (-(n : ℤ)) x) ^ 2 =
        goldbachExponentialSum (2 * n) x * goldbachExponentialSum (2 * n) x *
          (unitCharacter (-(n : ℤ)) x * unitCharacter (-(n : ℤ)) x) := by ring
    _ = _ := by rw [hphase]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

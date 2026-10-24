# adaptiveSignedSamplingError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e72644669dfc2ec4dc3be490a72a4a1e9f746d744e9b53f672fab33e1e885a3d",
  "kind": "def",
  "lexical_name": "adaptiveSignedSamplingError",
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
  "slug": "adaptivesignedsamplingerror--bb3d56fa250b10d47b62fb70",
  "source": {
    "blob": "69c62ac1f55259a9059f20c4d04ee2b3c2c077eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb3d56fa250b10d47b62fb70cc043a5b362c0d6fe05fdba31bf4fb5fd7a7c155",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e72644669dfc2ec4dc3be490a72a4a1e9f746d744e9b53f672fab33e1e885a3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptiveSignedSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    ((adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ)) -
      (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
        (adaptivePlainSample A d m - sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))))

/-- All signed corrections remain joint; this is the original full prime-power row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c62ac1f55259a9059f20c4d04ee2b3c2c077eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

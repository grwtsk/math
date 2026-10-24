# continuous_local_does_not_imply_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccafa381-6116-4309-e85a-af00df40cfa1",
  "kind": "theorem",
  "lexical_name": "continuous_local_does_not_imply_global",
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
  "slug": "continuous-local-does-not-imply-global--165188a6186bcba4716595ef",
  "source": {
    "blob": "d64803ff2c3cc5aa3071a963644ee50d5ba1a430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165188a6186bcba4716595efeb3b9e4998a6c93b251f71c6688cf5e0b6d7e5d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccafa381-6116-4309-e85a-af00df40cfa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_local_does_not_imply_global :
    ¬ (∀ f : ℝ → ℝ, ContinuousOn f (Ioi 0) → SmallPositive f →
      GlobalNonnegative f) := by
  intro h
  exact affineFixture_not_global
    (h affineFixture affineFixture_continuous.continuousOn affineFixture_smallPositive)

/-- Every prescribed bounded test window admits a continuous positive fixture that becomes
negative later. This is not a statement about a source-bound operator family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d64803ff2c3cc5aa3071a963644ee50d5ba1a430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

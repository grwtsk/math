# exponential_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc7b025e-2edb-0935-f12c-41a7fc2add8c",
  "kind": "theorem",
  "lexical_name": "exponential_eq",
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
  "slug": "exponential-eq--57776caeee58640488cafc2c",
  "source": {
    "blob": "6c5383337b65dfcb0405314dd27e7a675c0da873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalExpStateFold.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57776caeee58640488cafc2c7866020669ef170cd1973afb8f12ec4ac111ffd9",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalExpStateFold.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc7b025e-2edb-0935-f12c-41a7fc2add8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_eq (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    exponential bits w s terms = RationalRoundedExp.enclosure bits w s terms := by
  have hs := run_spec (squareStep bits) (squareSpec bits w s terms)
    (squareStep_spec bits w s terms) 0 s
  rw [exponential, initial_eq, hs]
  simp only [Nat.zero_add]
  unfold squareSpec RationalRoundedExp.enclosure
  congr 1
  change outwardPropagation bits
        (RationalExpTrace.seedTail (magnitude w) s terms +
          magnitude (sub (RationalExpTrace.seedValue w s terms)
            (RationalRoundedExp.stage bits w s terms 0)))
        (RationalRoundedExp.squareRadius bits w s terms) s = _
  apply outward_congr
  intro j hj
  exact (RationalRoundedExp.trace_radius bits w s terms j hj).symm

/-- The rounded log is computed by its old owner and reused in both channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalExpStateFold.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalExpStateFold.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5383337b65dfcb0405314dd27e7a675c0da873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

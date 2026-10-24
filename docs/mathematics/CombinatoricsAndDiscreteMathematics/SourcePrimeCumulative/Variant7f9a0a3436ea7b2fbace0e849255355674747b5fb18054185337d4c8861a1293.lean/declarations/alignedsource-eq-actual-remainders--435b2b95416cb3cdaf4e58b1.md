# alignedSource_eq_actual_remainders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed1332e9-caf5-805e-ae5f-f578782f2616",
  "kind": "theorem",
  "lexical_name": "alignedSource_eq_actual_remainders",
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
  "slug": "alignedsource-eq-actual-remainders--435b2b95416cb3cdaf4e58b1",
  "source": {
    "blob": "35721b27bd3356dd87185f2a74e8d7632d535b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:435b2b95416cb3cdaf4e58b13d4e57b28a2de8ca5b10fd52374004443a6e00c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed1332e9-caf5-805e-ae5f-f578782f2616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alignedSource_eq_actual_remainders (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ) :
    alignedSource A P = -globalBaseline A +
      weightedDivisors P (vaughanCutoff A) (divisorRemainder A) := by
  unfold alignedSource weightedDivisors
  simp_rw [divisorInteraction_sub_counterterm A hA]

/-- All disclosed centering means cancel before forming this genuine source increment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35721b27bd3356dd87185f2a74e8d7632d535b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

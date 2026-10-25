# knotCounterexample_iff_fixedKnotResidualCounterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9483a529-324a-bbed-3be4-0bae56752832",
  "kind": "theorem",
  "lexical_name": "knotCounterexample_iff_fixedKnotResidualCounterexample",
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
  "slug": "knotcounterexample-iff-fixedknotresidualcounterexample--4443a7815132d962fabb196b",
  "source": {
    "blob": "6dcf756460f4ac45aa6f13e869e3c9aabaaaa7e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variant28d136347a3948204763793a0e0a4ae90998aaf3437a0546f256306cfdb4b10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4443a7815132d962fabb196bb8c9cdbf234a32f6be89584b7bbd650d079a3514",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variant28d136347a3948204763793a0e0a4ae90998aaf3437a0546f256306cfdb4b10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9483a529-324a-bbed-3be4-0bae56752832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem knotCounterexample_iff_fixedKnotResidualCounterexample
    (R : CurrentReduction T)
    {K : T.Knot}
    (hK : T.Nontrivial K) :
    T.KnotCounterexample K ↔ T.FixedKnotResidualCounterexample K := by
  constructor
  · intro hcounterexample
    refine ⟨R.residualInvariants hK hcounterexample, ?_⟩
    rcases hcounterexample with ⟨r, s, hcosmetic⟩
    rcases R.residualSlopes hK hcosmetic with hrs | hrs
    · rcases hrs with ⟨rfl, rfl⟩
      exact hcosmetic.2
    · rcases hrs with ⟨rfl, rfl⟩
      exact T.fillingsHomeomorphic_symm hcosmetic.2
  · exact T.fixedKnotResidualCounterexample_is_knotCounterexample

/--
The global conjecture fails exactly when a hyperbolic residual counterexample
exists.  The forward implication is the explicit replacement capability; the
reverse implication is the direct observation that such a package already is
a nontrivial knot counterexample.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variant28d136347a3948204763793a0e0a4ae90998aaf3437a0546f256306cfdb4b10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variant28d136347a3948204763793a0e0a4ae90998aaf3437a0546f256306cfdb4b10d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dcf756460f4ac45aa6f13e869e3c9aabaaaa7e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

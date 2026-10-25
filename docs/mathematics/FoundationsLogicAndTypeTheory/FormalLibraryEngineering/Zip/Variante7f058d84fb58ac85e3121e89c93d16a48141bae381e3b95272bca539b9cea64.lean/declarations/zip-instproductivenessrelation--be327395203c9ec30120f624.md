# Zip.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c63c530d2da2a6fe6cb052eb46ec2bdc5b9fdecdd6a5f0953ab5bfc312c5ad",
  "kind": "def",
  "lexical_name": "Zip.instProductivenessRelation",
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
  "slug": "zip-instproductivenessrelation--be327395203c9ec30120f624",
  "source": {
    "blob": "59f0ae0391f6cec515d9977763df438b8fd17098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be327395203c9ec30120f624ecaac05a040e56d35ca63b8ac350ec375a563590",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c63c530d2da2a6fe6cb052eb46ec2bdc5b9fdecdd6a5f0953ab5bfc312c5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Zip.instProductivenessRelation [Monad m] [Productive α₁ m] [Productive α₂ m] :
    ProductivenessRelation (Zip α₁ m α₂ β₂) m where
  Rel := Zip.Rel₃ m
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · apply Option.SomeLtNone.wellFounded_lt
      exact emptyWf.wf
    · refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
      · exact WellFoundedRelation.wf
      · exact WellFoundedRelation.wf
  subrelation {it it'} h := by
    cases h
    case yieldLeft hm it' out hp =>
      apply Zip.rel₃_of_memoizedLeft
      simp [Option.SomeLtNone.lt, hm]
    case skipLeft hm it' hp =>
      obtain ⟨⟨left, memoizedLeft, right⟩⟩ := it
      simp only at hm
      rw [hm]
      apply Zip.rel₃_of_left
      exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›
    case skipRight out₁ hm it₂' hp =>
      apply Zip.rel₃_of_right
      · simp_all
      · exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f0ae0391f6cec515d9977763df438b8fd17098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

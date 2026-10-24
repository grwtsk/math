# actualEligibleCount_eq_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42043ac76a121fff2bd2a7740d829b447afdfea0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de82c0c9-1e96-a52a-3a97-e397e1bc743c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45da8c27-75b8-7405-4a7a-1504e9ed8fad",
  "kind": "theorem",
  "lexical_name": "actualEligibleCount_eq_count",
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
  "slug": "actualeligiblecount-eq-count--4beb6a6b2fbe5e1969349e94",
  "source": {
    "blob": "42043ac76a121fff2bd2a7740d829b447afdfea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4beb6a6b2fbe5e1969349e9414d060f8cfead3ac5cef2490be71ff9f0eaa76be",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45da8c27-75b8-7405-4a7a-1504e9ed8fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEligibleCount_eq_count (x : ℕ) :
    eligibleCount actualResidueSixCounts x =
      Nat.count IsEligibleResidueSixPrime (x + 1) := by
  change Nat.count IsResidueOnePrime (x + 1) +
      Nat.count IsResidueFivePrime (x + 1) = _
  exact (count_eligible_eq_residue_sum (x + 1)).symm

/-- Between consecutive eligible cutoffs, neither residue count changes. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42043ac76a121fff2bd2a7740d829b447afdfea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

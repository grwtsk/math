# dvd_iff_emultiplicity_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28c36c20f220e2ea147c67418758873c56455f68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae1e41dcd5af71166e757c3433c87392e53df624c840ae1fe334b3a5489fbfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9bd3f75-b5e0-5877-d2c8-12a72917f006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9792fae-1f8e-202b-cbfc-f50b09784ef9",
  "kind": "lemma",
  "lexical_name": "dvd_iff_emultiplicity_le",
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
  "slug": "dvd-iff-emultiplicity-le--fa1d28252b017c302ae7fdf2",
  "source": {
    "blob": "28c36c20f220e2ea147c67418758873c56455f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variantbae1e41dcd5af71166e757c3433c87392e53df624c840ae1fe334b3a5489fbfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa1d28252b017c302ae7fdf2a204a2dcaa055eabae780ca26ab455eae42de6e2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variantbae1e41dcd5af71166e757c3433c87392e53df624c840ae1fe334b3a5489fbfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9792fae-1f8e-202b-cbfc-f50b09784ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_iff_emultiplicity_le {a b : R} (ha : a ≠ 0) :
    a ∣ b ↔ ∀ p : R, Prime p → emultiplicity p a ≤ emultiplicity p b := by
  classical
  refine ⟨fun h _ _ ↦ emultiplicity_le_emultiplicity_of_dvd_right h, fun h ↦ ?_⟩
  by_cases hb : b = 0
  · simp_all
  let : StrongNormalizationMonoid R := UniqueFactorizationMonoid.strongNormalizationMonoid
  rw [dvd_iff_normalizedFactors_le_normalizedFactors ha hb, Multiset.le_iff_count]
  intro q
  by_cases hq : q ∈ normalizedFactors a
  · have hqprime : Prime q := prime_of_normalized_factor q hq
    have h1 := emultiplicity_eq_count_normalizedFactors hqprime.irreducible ha
    have h2 := emultiplicity_eq_count_normalizedFactors hqprime.irreducible hb
    rw [normalize_normalized_factor q hq] at h1 h2
    simpa [h1, h2, ENat.natCast_le_natCast] using h q hqprime
  · simp [Multiset.count_eq_zero_of_notMem hq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variantbae1e41dcd5af71166e757c3433c87392e53df624c840ae1fe334b3a5489fbfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variantbae1e41dcd5af71166e757c3433c87392e53df624c840ae1fe334b3a5489fbfb.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c36c20f220e2ea147c67418758873c56455f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

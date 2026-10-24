# frameRowSpace_eq_iff_positive_orderedMinor_proportional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6796d6b1011888c08fbde25d812b6117fad3a367",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:457bf499-6494-fa94-e213-57ea5d970c3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:759867f0-0574-f082-c338-537e04b6cdf4",
  "kind": "theorem",
  "lexical_name": "frameRowSpace_eq_iff_positive_orderedMinor_proportional",
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
  "slug": "framerowspace-eq-iff-positive-orderedminor-proportional--fa93bd82129cf72b12d6ea13",
  "source": {
    "blob": "6796d6b1011888c08fbde25d812b6117fad3a367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa93bd82129cf72b12d6ea139e88f2e2587adbd98da72b839a666712346eb7ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:759867f0-0574-f082-c338-537e04b6cdf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frameRowSpace_eq_iff_positive_orderedMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k) (hB : B.rank = k)
    (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B) :
    frameRowSpace A = frameRowSpace B ↔
      ∃ t : ℝ, 0 < t ∧
        ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I := by
  constructor
  · intro he
    obtain ⟨t, ht, hp⟩ :=
      (frameRowSpace_eq_iff_orderedMinor_proportional A B hA hB).mp he
    exact ⟨t, orderedMinor_factor_pos A B hA hAn hBn t ht hp, hp⟩
  · rintro ⟨t, ht, hp⟩
    exact (frameRowSpace_eq_iff_orderedMinor_proportional A B hA hB).mpr
      ⟨t, ne_of_gt ht, hp⟩

/-- Equal nonnegative full-rank frames are related by a positive-determinant row change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6796d6b1011888c08fbde25d812b6117fad3a367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

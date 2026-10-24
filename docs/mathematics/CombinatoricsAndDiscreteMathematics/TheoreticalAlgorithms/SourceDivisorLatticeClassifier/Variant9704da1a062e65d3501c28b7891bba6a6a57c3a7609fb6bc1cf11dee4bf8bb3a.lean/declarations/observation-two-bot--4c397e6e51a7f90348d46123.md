# observation_two_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62cb5150-7ba9-a61a-b432-486c00184500",
  "kind": "theorem",
  "lexical_name": "observation_two_bot",
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
  "slug": "observation-two-bot--4c397e6e51a7f90348d46123",
  "source": {
    "blob": "c61b4320e03fcf04e5991dc0a969fa348f57d364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c397e6e51a7f90348d46123237a326140982ff1b9c1632141901183ac55161c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62cb5150-7ba9-a61a-b432-486c00184500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem observation_two_bot : observation {2, 3} {2} = ⊥ := by
  apply Setoid.ext
  intro m n
  constructor
  · intro h
    apply Subtype.ext
    have hm : (m : ℕ) = 2 ∨ (m : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using m.property
    have hn : (n : ℕ) = 2 ∨ (n : ℕ) = 3 := by simpa only [Finset.mem_insert, Finset.mem_singleton] using n.property
    change divisorPattern {2} m = divisorPattern {2} n at h
    rcases hm with hm | hm <;> rcases hn with hn | hn
    · exact hm.trans hn.symm
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 2
      norm_num [divisorPattern] at hh
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 2
      norm_num [divisorPattern] at hh
    · exact hm.trans hn.symm
  · intro h
    change divisorPattern {2} m = divisorPattern {2} n
    change m = n at h
    exact congrArg (fun i : ↥({2, 3} : Finset ℕ) => divisorPattern {2} i) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61b4320e03fcf04e5991dc0a969fa348f57d364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

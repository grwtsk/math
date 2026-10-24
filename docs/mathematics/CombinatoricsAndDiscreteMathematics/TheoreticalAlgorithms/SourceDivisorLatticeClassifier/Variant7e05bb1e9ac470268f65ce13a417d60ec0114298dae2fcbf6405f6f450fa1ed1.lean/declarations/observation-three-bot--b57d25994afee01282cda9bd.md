# observation_three_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e764d6f-1925-5fc1-3f5c-1e190ec95664",
  "kind": "theorem",
  "lexical_name": "observation_three_bot",
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
  "slug": "observation-three-bot--b57d25994afee01282cda9bd",
  "source": {
    "blob": "9d5aa201a84729bcfd1bb23d56d463d54a8f6108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57d25994afee01282cda9bddc14caca606a7687e1eaa69cf6631583d1a7cac3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e764d6f-1925-5fc1-3f5c-1e190ec95664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem observation_three_bot : observation {2, 3} {3} = ⊥ := by
  apply Setoid.ext
  intro m n
  constructor
  · intro h
    apply Subtype.ext
    have hm : (m : ℕ) = 2 ∨ (m : ℕ) = 3 := by
      simpa only [Finset.mem_insert, Finset.mem_singleton] using m.property
    have hn : (n : ℕ) = 2 ∨ (n : ℕ) = 3 := by
      simpa only [Finset.mem_insert, Finset.mem_singleton] using n.property
    change divisorPattern {3} m = divisorPattern {3} n at h
    rcases hm with hm | hm <;> rcases hn with hn | hn
    · exact hm.trans hn.symm
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 3
      norm_num [divisorPattern] at hh
    · rw [hm, hn] at h
      have hh := Finset.ext_iff.mp h 3
      norm_num [divisorPattern] at hh
    · exact hm.trans hn.symm
  · intro h
    change divisorPattern {3} m = divisorPattern {3} n
    change m = n at h
    exact congrArg (fun i : ↥({2, 3} : Finset ℕ) => divisorPattern {3} i) h

/-- Both singleton probes already separate 2 and 3; their intersection separates neither. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d5aa201a84729bcfd1bb23d56d463d54a8f6108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

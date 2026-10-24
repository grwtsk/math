# before_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6ca4d582018a1b30abda712484711cdcc31bab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f080a665-2267-aa71-bd06-e5bab119cab6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a803f458-098c-a715-021d-5513dd3c66e7",
  "kind": "theorem",
  "lexical_name": "before_cutoff",
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
  "slug": "before-cutoff--a1fa2b1697de07f9fdfa7080",
  "source": {
    "blob": "b6ca4d582018a1b30abda712484711cdcc31bab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1fa2b1697de07f9fdfa7080f3e729d6e14f4264e087d515be5eee723dea047e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a803f458-098c-a715-021d-5513dd3c66e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem before_cutoff (X n : ℕ) (hn : n ≤ X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      if n = 1 then 1 else 0 := by
  rw [show n.divisors.filter (fun d => d ≤ X) = n.divisors by
    apply Finset.filter_eq_self.mpr
    intro d hd
    exact (Nat.le_of_dvd (Nat.pos_of_ne_zero (Nat.ne_zero_of_mem_divisors hd)) (Nat.dvd_of_mem_divisors hd)).trans hn]
  exact divisor_sum n

/-- On the first open dyadic tail block, the missing full divisor is exactly n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca4d582018a1b30abda712484711cdcc31bab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

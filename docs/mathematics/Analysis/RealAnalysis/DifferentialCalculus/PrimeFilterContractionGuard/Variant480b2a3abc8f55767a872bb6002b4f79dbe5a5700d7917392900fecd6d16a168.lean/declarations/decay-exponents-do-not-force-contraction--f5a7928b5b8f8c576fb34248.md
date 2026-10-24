# decay_exponents_do_not_force_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c42ab4f-020b-e0b3-a937-7981de094180",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22371443-cc5b-ce38-6850-8ba54f22871e",
  "kind": "theorem",
  "lexical_name": "decay_exponents_do_not_force_contraction",
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
  "slug": "decay-exponents-do-not-force-contraction--f5a7928b5b8f8c576fb34248",
  "source": {
    "blob": "27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5a7928b5b8f8c576fb3424846b3c0ac33a581a60b946f91431de5b7d62d00cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22371443-cc5b-ce38-6850-8ba54f22871e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decay_exponents_do_not_force_contraction :
    ∃ E : ℝ → ℝ,
      (∀ q : ℝ, 0 < q → DifferentiableAt ℝ E q) ∧
      (∀ q : ℝ, 0 < q → |E q| ≤ 1 / Real.sqrt q) ∧
      (∀ q : ℝ, 0 < q → |deriv E q| ≤ 28 / (q * Real.sqrt q)) ∧
      ¬ |E 1 - 2 * E 2| ≤ 1 :=
  ⟨oscillatoryRemainder, fun q hq ↦ (remainder_hasDerivAt q hq).differentiableAt,
    remainder_abs_le, remainder_derivative_abs_le_twenty_eight,
    prime_two_filter_not_contractive⟩

end
end PrimeFilterContractionGuardScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

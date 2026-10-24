# sourcePowerTail_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdc835ec-7a6a-257c-24f9-9224476f5447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59c6d3ea-ee9c-1136-6b03-5ec437d30de7",
  "kind": "theorem",
  "lexical_name": "sourcePowerTail_eq_sub",
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
  "slug": "sourcepowertail-eq-sub--df73086bc483e71b839fb5f0",
  "source": {
    "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df73086bc483e71b839fb5f04902540757df5a20806a1278b863bd42ee5309fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c6d3ea-ee9c-1136-6b03-5ec437d30de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePowerTail_eq_sub (n : ℕ) (t : ℝ) :
    sourcePowerTail n t = sourcePowerTail n 0 -
      ∫ u in (0 : ℝ)..t, thetaPhi u * u ^ n := by
  have h := intervalIntegral.integral_Ici_sub_Ici'
    (source_power_integrable n 0) (source_power_integrable n t)
  dsimp [sourcePowerTail]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d88f9cbfbd169cf374a393ce25b899ca1bba40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

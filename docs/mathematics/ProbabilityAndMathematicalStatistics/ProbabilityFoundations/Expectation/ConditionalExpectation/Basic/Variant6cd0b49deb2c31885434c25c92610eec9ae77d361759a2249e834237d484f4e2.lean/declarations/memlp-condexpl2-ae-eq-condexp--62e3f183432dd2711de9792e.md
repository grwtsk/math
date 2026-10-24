# MemLp.condExpL2_ae_eq_condExp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3d1ba56995da5fa4545c82b2bbb29f86a48cb31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56a52b41-ea47-a5ae-89e5-bb188946f2db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce89a8ed-860c-12c8-dca0-c7f199f7d4ea",
  "kind": "lemma",
  "lexical_name": "MemLp.condExpL2_ae_eq_condExp'",
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
  "slug": "memlp-condexpl2-ae-eq-condexp--62e3f183432dd2711de9792e",
  "source": {
    "blob": "a3d1ba56995da5fa4545c82b2bbb29f86a48cb31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 391,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e3f183432dd2711de9792e5eec13388ec77d09100d3e35ad414ee18a8ffdc8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce89a8ed-860c-12c8-dca0-c7f199f7d4ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MemLp.condExpL2_ae_eq_condExp' (hm : m ≤ m₀) (hf1 : Integrable f μ) (hf2 : MemLp f 2 μ)
    [SigmaFinite (μ.trim hm)] : condExpL2 E 𝕜 hm hf2.toLp =ᵐ[μ] μ[f | m] := by
  refine ae_eq_condExp_of_forall_setIntegral_eq hm hf1
    (fun s hs htop ↦ integrableOn_condExpL2_of_measure_ne_top hm htop.ne _) (fun s hs htop ↦ ?_)
    (aestronglyMeasurable_condExpL2 hm _)
  rw [integral_condExpL2_eq hm (hf2.toLp _) hs htop.ne]
  refine setIntegral_congr_ae (hm _ hs) ?_
  filter_upwards [hf2.coeFn_toLp] with ω hω _ using hω

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d1ba56995da5fa4545c82b2bbb29f86a48cb31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

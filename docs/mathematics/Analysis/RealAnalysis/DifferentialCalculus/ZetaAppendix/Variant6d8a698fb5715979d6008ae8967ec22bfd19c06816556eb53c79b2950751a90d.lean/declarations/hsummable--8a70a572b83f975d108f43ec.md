# hsummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2053,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28321939-b984-678d-e94e-bc6accf79584",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1455949-6c03-2ed1-5a90-be1ef358a257",
  "kind": "lemma",
  "lexical_name": "hsummable",
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
  "slug": "hsummable--8a70a572b83f975d108f43ec",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2060,
    "line": 2053,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a70a572b83f975d108f43ecbf1973f7bbbe91b95b208e1e29f3c4848fd21b45",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1455949-6c03-2ed1-5a90-be1ef358a257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2053–2060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hsummable {z : ℂ} (hz : z ∈ integerComplement) :
    Summable fun n : ℕ+ ↦ 1 / (z - 2 * n) + 1 / (z + 2 * n) := by
  have he (n : ℕ+) := cotTerm_identity hz (2 * n - 1)
  have hi : (fun n : ℕ+ ↦ (2 * n : ℤ)).Injective := fun _ _ _ ↦ by simp_all
  have := mul_left (2 * z)
    ((EisensteinSeries.summable_linear_sub_mul_linear_add z 1 1).comp_injective hi)
  simp_all [cotTerm, mul_comm (z + _)⁻¹]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L2053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

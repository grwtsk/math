# frhat_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:944f2266-4a81-f298-6eb8-aa335fec0ca8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ae98485-eda4-e8cf-cf76-fee6f78039dd",
  "kind": "lemma",
  "lexical_name": "frhat_identity",
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
  "slug": "frhat-identity--c64de665440dd9b45cc1796c",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64de665440dd9b45cc1796c309444375eaaf9020e455c42e392a8174c73b236",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ae98485-eda4-e8cf-cf76-fee6f78039dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma frhat_identity (T L ℓ a b J : ℝ) (hL : L ≠ 0) (hℓ : ℓ ≠ 0) (ha : a ≠ 0) :
    T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J) / (a * L) ^ 2
      = (ThmD.cRatio (L / ℓ) a b J)⁻¹ * (T * ℓ / (2 * π)) := by
  have hπ : (π : ℝ) ≠ 0 := Real.pi_pos.ne'
  unfold ThmD.cRatio
  rw [inv_div]
  field_simp

/-! ## The assembly -/

section Assembly
variable {D} (h : FactsXi D)
include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# zero_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c92977835b12125002806cf0b213a9bcf9b80c84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537777459326a034edd3aed8d1c89b6e04f78cb500250b2fa64db6714879d63f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6800dd34-7fc6-fe25-52ba-c1d78e36a761",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49ca02f5-42a1-5bce-f1b8-317c4bf0e08d",
  "kind": "lemma",
  "lexical_name": "zero_smul",
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
  "slug": "zero-smul--205da1b9cc8fa85cf22bc44e",
  "source": {
    "blob": "c92977835b12125002806cf0b213a9bcf9b80c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant537777459326a034edd3aed8d1c89b6e04f78cb500250b2fa64db6714879d63f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:205da1b9cc8fa85cf22bc44e6ace8df9ac6841c0ddffe05de810d0782630951e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Holder/Variant537777459326a034edd3aed8d1c89b6e04f78cb500250b2fa64db6714879d63f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49ca02f5-42a1-5bce-f1b8-317c4bf0e08d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma zero_smul (f : Lp E q μ) :
    (0 : Lp 𝕜 p μ) • f = (0 : Lp E r μ) := by
  convert! MemLp.zero (ε := E) |>.toLp_zero
  apply MemLp.toLp_congr _ _ ?_
  filter_upwards [Lp.coeFn_zero 𝕜 p μ] with x hx
  rw [Pi.smul_apply', hx]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Holder/Variant537777459326a034edd3aed8d1c89b6e04f78cb500250b2fa64db6714879d63f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant537777459326a034edd3aed8d1c89b6e04f78cb500250b2fa64db6714879d63f.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92977835b12125002806cf0b213a9bcf9b80c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

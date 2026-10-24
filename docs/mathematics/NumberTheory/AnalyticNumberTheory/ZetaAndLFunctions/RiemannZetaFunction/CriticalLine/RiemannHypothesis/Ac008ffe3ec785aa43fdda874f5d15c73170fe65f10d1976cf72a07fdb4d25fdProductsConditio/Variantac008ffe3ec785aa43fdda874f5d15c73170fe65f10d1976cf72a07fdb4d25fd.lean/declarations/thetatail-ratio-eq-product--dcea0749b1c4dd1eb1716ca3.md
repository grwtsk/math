# thetaTail_ratio_eq_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6982a7a2376d319ef7d591156e34b483e0c4eaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093022da-8003-7fe1-9e2d-c4bb7adae0a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca83ba5d-4771-74b6-c86f-e958432bd193",
  "kind": "theorem",
  "lexical_name": "thetaTail_ratio_eq_product",
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
  "slug": "thetatail-ratio-eq-product--dcea0749b1c4dd1eb1716ca3",
  "source": {
    "blob": "a6982a7a2376d319ef7d591156e34b483e0c4eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 12,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcea0749b1c4dd1eb1716ca38cbf6fbcb20ff96972623d6abdf6eacd4f8e520d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca83ba5d-4771-74b6-c86f-e958432bd193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_ratio_eq_product {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail s t / thetaTail r t =
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t := by
  induction s, hrs using Nat.le_induction with
  | base => simp [(thetaTail_positive r ht).ne']
  | succ s hrs ih =>
    rw [Finset.prod_Ico_succ_top hrs, ← ih]
    field_simp [(thetaTail_positive r ht).ne', (thetaTail_positive s ht).ne']

/- The next declarations are scratch-only conditional assembly checks. The
maintained module will import the proved successor-ratio theorem and carry
none of this temporary premise. -/
section ConditionalAssembly

variable (hsucc : ∀ n : ℕ,
  AntitoneOn (fun t : ℝ => thetaTail (n + 1) t / thetaTail n t) (Ici 0))

include hsucc

/-- The pinned nonnegative-antitone finite-product API controls the whole telescope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6982a7a2376d319ef7d591156e34b483e0c4eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

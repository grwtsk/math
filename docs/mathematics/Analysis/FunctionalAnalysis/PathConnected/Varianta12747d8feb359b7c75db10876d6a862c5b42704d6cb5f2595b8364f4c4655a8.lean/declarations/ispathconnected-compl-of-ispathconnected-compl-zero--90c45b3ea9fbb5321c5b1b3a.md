# isPathConnected_compl_of_isPathConnected_compl_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd8f6ccb-ef84-4d37-d187-af61fcf0a4b6",
  "kind": "theorem",
  "lexical_name": "isPathConnected_compl_of_isPathConnected_compl_zero",
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
  "slug": "ispathconnected-compl-of-ispathconnected-compl-zero--90c45b3ea9fbb5321c5b1b3a",
  "source": {
    "blob": "6aa52440c1eb698b739e2106a4d364f117e290bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90c45b3ea9fbb5321c5b1b3a013de1f95167d064bce87705dc3e2bb162651a7a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8f6ccb-ef84-4d37-d187-af61fcf0a4b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPathConnected_compl_of_isPathConnected_compl_zero {p q : Submodule ℝ E}
    (hpq : IsCompl p q) (hpc : IsPathConnected ({0}ᶜ : Set p)) : IsPathConnected (qᶜ : Set E) := by
  convert (hpc.image continuous_subtype_val).add q.isPathConnected using 1
  trans Submodule.prodEquivOfIsCompl p q hpq '' ({0}ᶜ ×ˢ univ)
  · rw [prod_univ, LinearEquiv.image_eq_preimage]
    ext
    simp
  · ext
    simp [mem_add, and_assoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa52440c1eb698b739e2106a4d364f117e290bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

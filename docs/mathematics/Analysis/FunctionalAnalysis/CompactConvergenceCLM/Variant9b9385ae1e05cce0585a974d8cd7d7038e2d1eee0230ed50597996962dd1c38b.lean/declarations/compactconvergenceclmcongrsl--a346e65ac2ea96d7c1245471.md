# compactConvergenceCLMCongrSL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c82b481cff69ef1afc488b499c4efc42fe91d06dde39f8fe5ecbde470b10ab73",
  "kind": "def",
  "lexical_name": "compactConvergenceCLMCongrSL",
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
  "slug": "compactconvergenceclmcongrsl--a346e65ac2ea96d7c1245471",
  "source": {
    "blob": "855679030c2bc1d1535efad19b4a6804d1d61480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a346e65ac2ea96d7c124547155ce2a449ebff84c275cbcb08b8768ef732a85bc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c82b481cff69ef1afc488b499c4efc42fe91d06dde39f8fe5ecbde470b10ab73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactConvergenceCLMCongrSL (e₁₂ : E ≃SL[σ₁₂] F) (e₄₃ : H ≃SL[σ₄₃] G) :
    (E →SL_c[σ₁₄] H) ≃SL[σ₄₃] (F →SL_c[σ₂₃] G) :=
  ContinuousLinearEquiv.uniformConvergenceCLMCongrSL e₁₂ e₄₃ _ _ fun s ↦ by
    simp [← e₁₂.toHomeomorph.isCompact_preimage]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855679030c2bc1d1535efad19b4a6804d1d61480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

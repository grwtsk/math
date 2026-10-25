# sumCasesOn_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8257a6a-e3c1-a25e-7e8c-03f007159581",
  "kind": "theorem",
  "lexical_name": "sumCasesOn_left",
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
  "slug": "sumcaseson-left--b5dcc3b1b0fb2e3c3620859c",
  "source": {
    "blob": "68dd6b3a579250074f3126bf297862a324e8950b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 722,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5dcc3b1b0fb2e3c3620859c441fd4df3bf152e8350c72d4105fef56a17a94ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8257a6a-e3c1-a25e-7e8c-03f007159581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumCasesOn_left {f : α → β ⊕ γ} {g : α → β →. σ} {h : α → γ → σ} (hf : Computable f)
    (hg : Partrec₂ g) (hh : Computable₂ h) :
    @Partrec _ σ _ _ fun a => Sum.casesOn (f a) (g a) fun c => Part.some (h a c) :=
  (sumCasesOn_right (sumCasesOn hf (sumInr.comp snd).to₂ (sumInl.comp snd).to₂) hh hg).of_eq
    fun a => by cases f a <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd6b3a579250074f3126bf297862a324e8950b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

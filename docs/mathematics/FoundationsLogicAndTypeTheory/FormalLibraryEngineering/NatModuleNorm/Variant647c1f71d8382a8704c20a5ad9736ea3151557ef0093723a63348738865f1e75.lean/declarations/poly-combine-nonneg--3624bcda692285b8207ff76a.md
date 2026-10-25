# Poly.combine_Nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f600b168c5cb314273f3cc50c518ec89e3df2654",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccf29e3e-a2f2-f07f-e357-1e01d71efe00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99396288-1a9d-dae0-b775-36cad2b56ffd",
  "kind": "theorem",
  "lexical_name": "Poly.combine_Nonneg",
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
  "slug": "poly-combine-nonneg--3624bcda692285b8207ff76a",
  "source": {
    "blob": "f600b168c5cb314273f3cc50c518ec89e3df2654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3624bcda692285b8207ff76ad06f1c6945759c3bcc331ce60f7e6bbcc6cba37e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99396288-1a9d-dae0-b775-36cad2b56ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.combine_Nonneg (p₁ p₂ : Poly) : p₁.NonnegCoeffs → p₂.NonnegCoeffs → (p₁.combine p₂).NonnegCoeffs := by
  fun_induction Poly.combine
  next => intros; assumption
  next => intros; assumption
  next ih =>
    intro h₁ h₂; cases h₁; cases h₂
    apply ih <;> assumption
  next h ih =>
    intro h₁ h₂; cases h₁; cases h₂
    constructor; simp +zetaDelta; omega
    apply ih <;> assumption
  next ih =>
    intro h₁ h₂; cases h₁; cases h₂
    constructor; simp +zetaDelta; omega
    apply ih; assumption; constructor; assumption; assumption
  next ih =>
    intro h₁ h₂; cases h₁; cases h₂
    constructor; assumption
    apply ih; constructor; assumption; assumption; assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f600b168c5cb314273f3cc50c518ec89e3df2654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

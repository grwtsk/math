# AddEquiv.normedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:630d96747d78745f4cd57883084b23486abb5a4ed81b29e52dd2f026aa108358",
  "kind": "abbrev",
  "lexical_name": "AddEquiv.normedSpace",
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
  "slug": "addequiv-normedspace--41d54d2ec1c5cdf28e4ac39b",
  "source": {
    "blob": "f9e86900764de7d89388d63b1e8a6fcf740c0c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TransferInstance/Variant1e9d346ff407a52e39aa57b6295fcb307d1cbee22de1214fb87736fb8766bfd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41d54d2ec1c5cdf28e4ac39b46a3b9cdf26440a4846055bfb0f8ac75c925c693",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TransferInstance/Variant1e9d346ff407a52e39aa57b6295fcb307d1cbee22de1214fb87736fb8766bfd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:630d96747d78745f4cd57883084b23486abb5a4ed81b29e52dd2f026aa108358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev AddEquiv.normedSpace (𝕜 : Type*) [NormedField 𝕜]
    [AddCommGroup α] [SeminormedAddCommGroup β] [NormedSpace 𝕜 β] (e : α ≃+ β) :
    letI : SeminormedAddCommGroup α := .induced _ _ e
    NormedSpace 𝕜 α :=
  letI := e.module 𝕜
  .induced _ _ _ (e.linearEquiv _)

@[deprecated (since := "2026-07-30")] alias Equiv.normedSpace := AddEquiv.normedSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TransferInstance/Variant1e9d346ff407a52e39aa57b6295fcb307d1cbee22de1214fb87736fb8766bfd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TransferInstance/Variant1e9d346ff407a52e39aa57b6295fcb307d1cbee22de1214fb87736fb8766bfd6.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e86900764de7d89388d63b1e8a6fcf740c0c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

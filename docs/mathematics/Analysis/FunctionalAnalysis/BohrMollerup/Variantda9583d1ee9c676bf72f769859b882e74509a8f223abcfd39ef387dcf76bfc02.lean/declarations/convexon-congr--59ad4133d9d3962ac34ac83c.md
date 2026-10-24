# ConvexOn.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05bd19dd-b8e3-bfef-d5fb-53a4bc56d20e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:522ef01b-1e7a-d5da-de3c-07715f6a4b9e",
  "kind": "theorem",
  "lexical_name": "ConvexOn.congr",
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
  "slug": "convexon-congr--59ad4133d9d3962ac34ac83c",
  "source": {
    "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ad4133d9d3962ac34ac83c3fe5c60bd9ca57404cf604515c87af3711f14fc2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522ef01b-1e7a-d5da-de3c-07715f6a4b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.congr [SMul 𝕜 β] (hf : ConvexOn 𝕜 s f) (hfg : EqOn f g s) : ConvexOn 𝕜 s g :=
  ⟨hf.1, fun x hx y hy a b ha hb hab => by
    simpa only [← hfg hx, ← hfg hy, ← hfg (hf.1 hx hy ha hb hab)] using hf.2 hx hy ha hb hab⟩
#align convex_on.congr ConvexOn.congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdb7d3c3585c295f3b1919953b4ddae45190113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

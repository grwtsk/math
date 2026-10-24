# coe_zmod_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:382bcfff-6642-3465-78e5-e243cf22454c",
  "kind": "lemma",
  "lexical_name": "coe_zmod_smul",
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
  "slug": "coe-zmod-smul--cabf90a1fb7c56d47bf5c7e2",
  "source": {
    "blob": "1ca4d51e2e33dba33a0fe7e8619264dd8f0f2652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1185,
    "line": 1184,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cabf90a1fb7c56d47bf5c7e2d724229dfa387de385661145981b1cb1613df3fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382bcfff-6642-3465-78e5-e243cf22454c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1184–1185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma coe_zmod_smul (a : ZMod n) (x : K) : ↑(a • x) = (a • x : G) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean#L1184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca4d51e2e33dba33a0fe7e8619264dd8f0f2652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

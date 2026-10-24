# meromorphicAt_sub_iff_meromorphicAt₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf43bd01-eac6-0989-c705-0e14bece9c0f",
  "kind": "lemma",
  "lexical_name": "meromorphicAt_sub_iff_meromorphicAt₁",
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
  "slug": "meromorphicat-sub-iff-meromorphicat--2afdace7b379b68dc6c5f4b8",
  "source": {
    "blob": "8524cb3eb9275c82c70ec38718ea82b5abe77143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 231,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variantafaec4355fb479d1e93a40be97bba881cba76c0f66fba71b323e6320f096aea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2afdace7b379b68dc6c5f4b8387f9b329f7928c6816767d5e235f7c5beb364ba",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variantafaec4355fb479d1e93a40be97bba881cba76c0f66fba71b323e6320f096aea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf43bd01-eac6-0989-c705-0e14bece9c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicAt_sub_iff_meromorphicAt₁ {f g : 𝕜 → E} (hf : MeromorphicAt f x) :
    MeromorphicAt (f - g) x ↔ MeromorphicAt g x := by
  exact ⟨fun h ↦ by simpa using h.sub hf, fun _ ↦ by fun_prop⟩

/--
If `f` is meromorphic at `x`, then `f - g` is meromorphic at `x` if and only if `g` is meromorphic
at `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variantafaec4355fb479d1e93a40be97bba881cba76c0f66fba71b323e6320f096aea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variantafaec4355fb479d1e93a40be97bba881cba76c0f66fba71b323e6320f096aea7.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8524cb3eb9275c82c70ec38718ea82b5abe77143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

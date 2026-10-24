# absorbent_iff_eventually_nhdsNE_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "293616e04c567872b78d8730784f2ade2c1d908d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05275a26-12bd-fb8a-c14d-a2aa3f4f067f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfc4e8bf-61cc-56a0-428a-c51794852f43",
  "kind": "theorem",
  "lexical_name": "absorbent_iff_eventually_nhdsNE_zero",
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
  "slug": "absorbent-iff-eventually-nhdsne-zero--167f9a2774a608fe376c2833",
  "source": {
    "blob": "293616e04c567872b78d8730784f2ade2c1d908d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167f9a2774a608fe376c28337a92501b301647818361b2de87f97b12cf9e4928",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc4e8bf-61cc-56a0-428a-c51794852f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorbent_iff_eventually_nhdsNE_zero :
    Absorbent 𝕜 s ↔ ∀ x : E, ∀ᶠ c : 𝕜 in 𝓝[≠] 0, c • x ∈ s :=
  forall_congr' fun x ↦ by simp only [absorbs_iff_eventually_nhdsNE_zero, mapsTo_singleton]

@[deprecated (since := "2025-03-03")]
alias absorbent_iff_eventually_nhdsWithin_zero := absorbent_iff_eventually_nhdsNE_zero

alias ⟨Absorbent.eventually_nhdsNE_zero, _⟩ := absorbent_iff_eventually_nhdsWithin_zero

@[deprecated (since := "2025-03-03")]
alias Absorbent.eventually_nhdsWithin_zero := Absorbent.eventually_nhdsNE_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293616e04c567872b78d8730784f2ade2c1d908d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

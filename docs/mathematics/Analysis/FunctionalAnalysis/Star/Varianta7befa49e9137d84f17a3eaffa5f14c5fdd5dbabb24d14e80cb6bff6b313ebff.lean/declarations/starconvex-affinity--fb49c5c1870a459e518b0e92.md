# StarConvex.affinity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0afab4da8b61062c06aeaf63fd9bd31f6db8581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6467b40-26cf-3926-4991-fc6ff2dbbd40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15ae9458-7723-52c2-78e9-a416ccfb60e9",
  "kind": "theorem",
  "lexical_name": "StarConvex.affinity",
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
  "slug": "starconvex-affinity--fb49c5c1870a459e518b0e92",
  "source": {
    "blob": "c0afab4da8b61062c06aeaf63fd9bd31f6db8581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 279,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb49c5c1870a459e518b0e92491f1d14c058133acbb8ac4a4720cf17a2ea3886",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ae9458-7723-52c2-78e9-a416ccfb60e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StarConvex.affinity (hs : StarConvex 𝕜 x s) (z : E) (c : 𝕜) :
    StarConvex 𝕜 (z + c • x) ((fun x => z + c • x) '' s) := by
  have h := (hs.smul c).add_left z
  rwa [← image_smul, image_image] at h

end AddCommMonoid

end OrderedCommSemiring

section OrderedRing

variable [Ring 𝕜] [PartialOrder 𝕜]

section AddCommMonoid

variable [AddRightMono 𝕜] [AddCommMonoid E] [SMulWithZero 𝕜 E] {s : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0afab4da8b61062c06aeaf63fd9bd31f6db8581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

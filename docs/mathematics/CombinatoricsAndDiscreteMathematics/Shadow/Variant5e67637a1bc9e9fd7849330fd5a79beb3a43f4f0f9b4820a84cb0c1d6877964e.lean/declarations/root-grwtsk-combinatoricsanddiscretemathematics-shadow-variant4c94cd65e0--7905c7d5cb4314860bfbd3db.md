# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.upShadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63cee750-5300-6a6f-9d06-efb807aa635d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.upShadow",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-shadow-variant4c94cd65e0--7905c7d5cb4314860bfbd3db",
  "source": {
    "blob": "6c3af200d171331e0cb87b4ec52b18b98d383df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7905c7d5cb4314860bfbd3db07bd144641f30672c7f96a0540ae754f3e057e1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63cee750-5300-6a6f-9d06-efb807aa635d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.upShadow (h𝒜 : (𝒜 : Set (Finset α)).Sized r) :
    (∂⁺ 𝒜 : Set (Finset α)).Sized (r + 1) := by
  intro A h
  obtain ⟨A, hA, i, hi, rfl⟩ := mem_upShadow_iff.1 h
  rw [card_insert_of_notMem hi, h𝒜 hA]

/-- Being in the upper shadow of `𝒜` means we have a superset in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3af200d171331e0cb87b4ec52b18b98d383df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

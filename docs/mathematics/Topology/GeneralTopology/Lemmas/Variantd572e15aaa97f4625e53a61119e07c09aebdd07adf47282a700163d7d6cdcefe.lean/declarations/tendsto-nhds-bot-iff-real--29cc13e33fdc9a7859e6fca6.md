# tendsto_nhds_bot_iff_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c43dcb-03e5-b3bf-94b5-5f4f824ab8da",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_bot_iff_real",
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
  "slug": "tendsto-nhds-bot-iff-real--29cc13e33fdc9a7859e6fca6",
  "source": {
    "blob": "fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29cc13e33fdc9a7859e6fca61cf0152086f29ab337eadaa08f5d2b6a58a46a90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c43dcb-03e5-b3bf-94b5-5f4f824ab8da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_bot_iff_real {α : Type*} {m : α → EReal} {f : Filter α} :
    Tendsto m f (𝓝 ⊥) ↔ ∀ x : ℝ, ∀ᶠ a in f, m a < x :=
  nhds_bot_basis.tendsto_right_iff.trans <| by simp only [true_implies, mem_Iio]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

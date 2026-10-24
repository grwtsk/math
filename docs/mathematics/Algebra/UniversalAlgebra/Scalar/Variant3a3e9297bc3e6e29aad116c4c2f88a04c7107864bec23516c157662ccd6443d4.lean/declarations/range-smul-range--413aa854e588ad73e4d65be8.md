# range_smul_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f7c6d91-99bd-0633-c8c7-e3ff6b45c9a2",
  "kind": "lemma",
  "lexical_name": "range_smul_range",
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
  "slug": "range-smul-range--413aa854e588ad73e4d65be8",
  "source": {
    "blob": "63813eed21505df115db0b1b73f8229eb5d2494a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 226,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413aa854e588ad73e4d65be86dd151a7965c73f409dd37945e2de76e00ed62a7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f7c6d91-99bd-0633-c8c7-e3ff6b45c9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_smul_range {ι κ : Type*} [SMul α β] (b : ι → α) (c : κ → β) :
    range b • range c = range fun p : ι × κ ↦ b p.1 • c p.2 :=
  image2_range ..

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63813eed21505df115db0b1b73f8229eb5d2494a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Decidable.iff_congr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b0a2c3-2b06-0f97-0f67-a889b3c74e65",
  "kind": "theorem",
  "lexical_name": "Decidable.iff_congr_right",
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
  "slug": "decidable-iff-congr-right--f1e5e7df1a704dcb60e591cc",
  "source": {
    "blob": "9c01128745f1f5c1e8aa741b3027a2ab624a2cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 634,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e5e7df1a704dcb60e591cc13885bb80eea9a7204229e93874951ec1b8a66c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b0a2c3-2b06-0f97-0f67-a889b3c74e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Decidable.iff_congr_right {P Q R : Prop} [Decidable P] [Decidable Q] [Decidable R] :
    ((P ↔ Q) ↔ (P ↔ R)) ↔ (Q ↔ R) :=
  if h : P then by simp_all else by simp_all [Decidable.not_iff_not]

/-- Transfer decidability of `a` to decidability of `b`, if the propositions are equivalent.
**Important**: this function should be used instead of `rw` on `Decidable b`, because the
kernel will get stuck reducing the usage of `propext` otherwise,
and `decide` will not work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c01128745f1f5c1e8aa741b3027a2ab624a2cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

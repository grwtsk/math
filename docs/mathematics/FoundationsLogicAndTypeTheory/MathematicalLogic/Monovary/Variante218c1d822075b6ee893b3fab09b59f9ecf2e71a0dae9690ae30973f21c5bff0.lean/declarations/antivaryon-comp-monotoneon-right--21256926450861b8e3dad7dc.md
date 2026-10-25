# AntivaryOn.comp_monotoneOn_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31a56c7b-b948-fc12-2099-a6340de79fb8",
  "kind": "theorem",
  "lexical_name": "AntivaryOn.comp_monotoneOn_right",
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
  "slug": "antivaryon-comp-monotoneon-right--21256926450861b8e3dad7dc",
  "source": {
    "blob": "cbb1a99c1b4b2a0368e750b7a97081c70766dc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Monovary/Variante218c1d822075b6ee893b3fab09b59f9ecf2e71a0dae9690ae30973f21c5bff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21256926450861b8e3dad7dc6f2006dea66a3569f8e98787ac99a7f958009dfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Monovary/Variante218c1d822075b6ee893b3fab09b59f9ecf2e71a0dae9690ae30973f21c5bff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31a56c7b-b948-fc12-2099-a6340de79fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntivaryOn.comp_monotoneOn_right (h : AntivaryOn f g s) (hg : MonotoneOn g' (g '' s)) :
    AntivaryOn f (g' ∘ g) s := fun _ hi _ hj hij =>
  h hi hj <| hg.reflect_lt (mem_image_of_mem _ hi) (mem_image_of_mem _ hj) hij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Monovary/Variante218c1d822075b6ee893b3fab09b59f9ecf2e71a0dae9690ae30973f21c5bff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Monovary/Variante218c1d822075b6ee893b3fab09b59f9ecf2e71a0dae9690ae30973f21c5bff0.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb1a99c1b4b2a0368e750b7a97081c70766dc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

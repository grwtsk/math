# lamp_pair_unique_local_gluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:977b5eff-3a04-20bd-f312-34697c3899d7",
  "kind": "theorem",
  "lexical_name": "lamp_pair_unique_local_gluing",
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
  "slug": "lamp-pair-unique-local-gluing--21197acfeb245d7872ee4f81",
  "source": {
    "blob": "b17be9c50ad983254387730cd6e5ef95daf7f263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 704,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21197acfeb245d7872ee4f81a3bd0313a5f768ea4eaf0e6c02d8c2f31d3d2770",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:977b5eff-3a04-20bd-f312-34697c3899d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lamp_pair_unique_local_gluing :
    (∃! firstGlued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        firstGlued point (pivotCover.included i member) =
          pilotLocalSectionFor lampComposition.first i point member) ∧
    (∃! secondGlued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        secondGlued point (pivotCover.included i member) =
          pilotLocalSectionFor lampComposition.second i point member) := by
  exact ⟨pilot_phrase_unique_gluing lampComposition.first,
    pilot_phrase_unique_gluing lampComposition.second⟩

/-! A single section for the lamp pair.  The two phrase opens overlap on the
speaker, addressee, and open continuation.  Their action points are disjoint,
so the glued section retains both actions in authored order instead of
collapsing them into one relation field. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17be9c50ad983254387730cd6e5ef95daf7f263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

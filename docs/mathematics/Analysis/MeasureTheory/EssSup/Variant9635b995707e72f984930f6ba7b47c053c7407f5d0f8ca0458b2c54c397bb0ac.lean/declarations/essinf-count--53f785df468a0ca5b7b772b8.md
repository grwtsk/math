# essInf_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb8943c0-863f-851b-4b08-294cd55e51f9",
  "kind": "lemma",
  "lexical_name": "essInf_count",
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
  "slug": "essinf-count--53f785df468a0ca5b7b772b8",
  "source": {
    "blob": "074b572fdabd4673ffb9394d63b6fa73193e3c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 226,
    "path": "GRWTSK/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53f785df468a0ca5b7b772b86fbb87c27c92554b3244e60c5263f99e2eeb73a0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8943c0-863f-851b-4b08-294cd55e51f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma essInf_count [MeasurableSingletonClass α] (f : α → β) : essInf f .count = ⨅ i, f i :=
  essInf_eq_iInf (by simp) _

section TopologicalSpace

variable {γ : Type*} {mγ : MeasurableSpace γ} {f : α → γ} {g : γ → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074b572fdabd4673ffb9394d63b6fa73193e3c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

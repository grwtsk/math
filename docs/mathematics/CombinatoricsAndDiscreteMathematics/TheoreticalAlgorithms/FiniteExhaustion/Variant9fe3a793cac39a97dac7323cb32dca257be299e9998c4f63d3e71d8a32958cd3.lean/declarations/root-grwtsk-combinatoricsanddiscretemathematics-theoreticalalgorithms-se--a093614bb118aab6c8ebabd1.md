# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SetFiniteExhaustion.Variant393cf0eeaec5caa41a7078e4f51fba0e70138bfdec02ac1cd9239b58d418dd48.Set.nonempty_finiteExhaustion_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e9d337f-6489-ab6b-efa3-eef3fedd1aeb",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SetFiniteExhaustion.Variant393cf0eeaec5caa41a7078e4f51fba0e70138bfdec02ac1cd9239b58d418dd48.Set.nonempty_finiteExhaustion_iff",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-se--a093614bb118aab6c8ebabd1",
  "source": {
    "blob": "9af725e0e98fe9df190da276a1377f23f45fed03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteExhaustion/Variant9fe3a793cac39a97dac7323cb32dca257be299e9998c4f63d3e71d8a32958cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a093614bb118aab6c8ebabd1e2cf34772cb63496033caa92c65e2eabfb59eaac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteExhaustion/Variant9fe3a793cac39a97dac7323cb32dca257be299e9998c4f63d3e71d8a32958cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e9d337f-6489-ab6b-efa3-eef3fedd1aeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SetFiniteExhaustion.Variant393cf0eeaec5caa41a7078e4f51fba0e70138bfdec02ac1cd9239b58d418dd48.Set.nonempty_finiteExhaustion_iff {s : Set α} :
    Nonempty s.FiniteExhaustion ↔ s.Countable := by
  refine ⟨fun ⟨K⟩ ↦ ?_, fun h ↦ ⟨h.finiteExhaustion⟩⟩
  rw [← K.iUnion_eq]
  exact countable_iUnion <| fun i ↦ (K.finite i).countable

set_option linter.dupNamespace false in
@[deprecated (since := "2026-05-24")]
alias Set.nonempty_finiteExhaustion_iff := Set.nonempty_finiteExhaustion_iff

section prod

variable {β : Type*} {t : Set β} (K' : FiniteExhaustion t)

/-- Given `K : FiniteExhaustion s` and `K' : FiniteExhaustion t`, `FiniteExhaustion.prod K K'`
is the finite exhaustion on `s ×ˢ t` given by the pointwise set product of the exhaustions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteExhaustion/Variant9fe3a793cac39a97dac7323cb32dca257be299e9998c4f63d3e71d8a32958cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteExhaustion/Variant9fe3a793cac39a97dac7323cb32dca257be299e9998c4f63d3e71d8a32958cd3.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af725e0e98fe9df190da276a1377f23f45fed03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

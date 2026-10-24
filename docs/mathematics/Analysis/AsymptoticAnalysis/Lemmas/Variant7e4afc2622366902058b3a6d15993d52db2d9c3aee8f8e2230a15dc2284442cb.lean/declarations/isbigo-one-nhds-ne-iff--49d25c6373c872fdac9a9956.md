# isBigO_one_nhds_ne_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a695e7f3-758b-7898-a800-367001789109",
  "kind": "lemma",
  "lexical_name": "isBigO_one_nhds_ne_iff",
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
  "slug": "isbigo-one-nhds-ne-iff--49d25c6373c872fdac9a9956",
  "source": {
    "blob": "c3b7f126b3ce20d05213e503cf117e2e5283e93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant7e4afc2622366902058b3a6d15993d52db2d9c3aee8f8e2230a15dc2284442cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d25c6373c872fdac9a99567c26556ebdc4a8923ac0922a12596a2f9c069cf2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variant7e4afc2622366902058b3a6d15993d52db2d9c3aee8f8e2230a15dc2284442cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a695e7f3-758b-7898-a800-367001789109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_one_nhds_ne_iff [TopologicalSpace α] {a : α} :
    f =O[𝓝[≠] a] (fun _ ↦ 1 : α → F) ↔ f =O[𝓝 a] (fun _ ↦ 1 : α → F) := by
  refine ⟨fun h ↦ ?_, fun h ↦ h.mono nhdsWithin_le_nhds⟩
  simp only [isBigO_one_iff, IsBoundedUnder, IsBounded, eventually_map] at h ⊢
  obtain ⟨c, hc⟩ := h
  use max c ‖f a‖
  filter_upwards [eventually_nhdsWithin_iff.mp hc] with b hb
  rcases eq_or_ne b a with rfl | hb'
  · apply le_max_right
  · exact (hb hb').trans (le_max_left ..)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variant7e4afc2622366902058b3a6d15993d52db2d9c3aee8f8e2230a15dc2284442cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant7e4afc2622366902058b3a6d15993d52db2d9c3aee8f8e2230a15dc2284442cb.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b7f126b3ce20d05213e503cf117e2e5283e93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tendsto_sup'_antidiagonal_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:127be003-47b5-bc5d-93be-906d149fbfe9",
  "kind": "lemma",
  "lexical_name": "tendsto_sup'_antidiagonal_cofinite",
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
  "slug": "tendsto-sup-antidiagonal-cofinite--10531adc37e91f627b450851",
  "source": {
    "blob": "1992593d815a875f69ad4a882a02123a63e17616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant2cea06d59b94ad7ee55947a133163bc9127d1782cdb87954720da5d27ab44e49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10531adc37e91f627b450851563ed56252e5bb152d9835be5ec85852eee8f7ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variant2cea06d59b94ad7ee55947a133163bc9127d1782cdb87954720da5d27ab44e49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127be003-47b5-bc5d-93be-906d149fbfe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_sup'_antidiagonal_cofinite (hf : Tendsto f cofinite F) : Tendsto
    (fun a ↦ (Finset.antidiagonal a).sup' (nonempty_antidiagonal _) f) cofinite F := by
  intro U hU
  refine ((((hf hU).image Prod.fst)).add ((hf hU).image Prod.snd)).subset ?_
  simp only [Set.subset_def, Set.mem_compl_iff, Set.mem_preimage]
  intro x hx
  obtain ⟨i, hi, e⟩ := Finset.exists_mem_eq_sup' (nonempty_antidiagonal x) f
  obtain rfl : i.1 + i.2 = x := by simpa using hi
  exact Set.add_mem_add (by simpa using ⟨i.2, e ▸ hx⟩) (by simpa using ⟨i.1, e ▸ hx⟩)

end Finset.HasAntidiagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variant2cea06d59b94ad7ee55947a133163bc9127d1782cdb87954720da5d27ab44e49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variant2cea06d59b94ad7ee55947a133163bc9127d1782cdb87954720da5d27ab44e49.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1992593d815a875f69ad4a882a02123a63e17616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

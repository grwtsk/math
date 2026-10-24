# MemHolder.memHolder_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdaf62a1-e952-b5b9-9aec-393e59eba88d",
  "kind": "lemma",
  "lexical_name": "MemHolder.memHolder_of_le_of_le",
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
  "slug": "memholder-memholder-of-le-of-le--0851ef8731687d49c3398ce1",
  "source": {
    "blob": "bccd7b34ab8ad5c635391a39e37be13e98ec42fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0851ef8731687d49c3398ce15c433374043a62588dfb9f792f28567a6f9a715f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdaf62a1-e952-b5b9-9aec-393e59eba88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MemHolder.memHolder_of_le_of_le {s t : ℝ≥0} (hf₁ : MemHolder r f) (hf₂ : MemHolder t f)
    (hrs : r ≤ s) (hst : s ≤ t) : MemHolder s f := by
  simp_rw [MemHolder, ← holderOnWith_univ] at *
  exact HolderOnWith.exists_holderOnWith_of_le_of_le hf₁ hf₂ hrs hst

end Monotonicity

end PseudoEMetricSpace

section MetricSpace

variable [MetricSpace X] [EMetricSpace Y]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccd7b34ab8ad5c635391a39e37be13e98ec42fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

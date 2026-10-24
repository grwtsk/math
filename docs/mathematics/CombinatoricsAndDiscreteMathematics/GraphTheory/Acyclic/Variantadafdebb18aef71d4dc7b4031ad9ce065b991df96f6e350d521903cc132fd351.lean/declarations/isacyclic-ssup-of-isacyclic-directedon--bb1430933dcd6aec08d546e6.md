# isAcyclic_sSup_of_isAcyclic_directedOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d810f18f-bbae-f555-9538-a8b493c74e44",
  "kind": "lemma",
  "lexical_name": "isAcyclic_sSup_of_isAcyclic_directedOn",
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
  "slug": "isacyclic-ssup-of-isacyclic-directedon--bb1430933dcd6aec08d546e6",
  "source": {
    "blob": "ce7a0b545fb79a395061d82f7e312b84ebe085d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb1430933dcd6aec08d546e6108d31cb821ca7d4442b0a97034065c9501d86bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d810f18f-bbae-f555-9538-a8b493c74e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isAcyclic_sSup_of_isAcyclic_directedOn (Hs : Set <| SimpleGraph V)
    (h_acyc : ∀ H ∈ Hs, H.IsAcyclic) (h_dir : DirectedOn (· ≤ ·) Hs) : IsAcyclic (sSup Hs) := by
  rcases Hs.eq_empty_or_nonempty with rfl | hnemp
  · simp
  · intro u p hp
    obtain ⟨H, hH, hpH⟩ := p.exists_mem_contains_edges_of_directed Hs hnemp h_dir
    exact h_acyc H hH (p.transfer H hpH) <| hp.transfer hpH

/-- Every acyclic subgraph `H ≤ G` is contained in a maximal such subgraph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7a0b545fb79a395061d82f7e312b84ebe085d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

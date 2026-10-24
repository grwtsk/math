# continuousAt_eraseIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a084a95-ec4e-c1b7-68f1-9af7077cc924",
  "kind": "theorem",
  "lexical_name": "continuousAt_eraseIdx",
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
  "slug": "continuousat-eraseidx--c9510d373ba691639ec99ecd",
  "source": {
    "blob": "7667789036d5e600ee2bb36ac0eb974b5f47c1b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9510d373ba691639ec99ecd922b8df875e912d579edd2cb7719d8b35b014589",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a084a95-ec4e-c1b7-68f1-9af7077cc924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_eraseIdx {n : ℕ} {i : Fin (n + 1)} :
    ∀ {l : Vector α (n + 1)}, ContinuousAt (Vector.eraseIdx i) l
  | ⟨l, hl⟩ => by
    rw [ContinuousAt, Vector.eraseIdx, tendsto_subtype_rng]
    simp only [Vector.eraseIdx_val]
    exact Tendsto.comp List.tendsto_eraseIdx continuousAt_subtype_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7667789036d5e600ee2bb36ac0eb974b5f47c1b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

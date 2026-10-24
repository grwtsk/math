# disjSups_subset_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97882114-3a50-60f9-d127-a494940d8e30",
  "kind": "theorem",
  "lexical_name": "disjSups_subset_left",
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
  "slug": "disjsups-subset-left--03fb8ccdf58135bade0e37be",
  "source": {
    "blob": "e3bd93cae408b32f3b260a93ca7f729b5f7ee2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 463,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sups/Variante080a72ff804921ac54cf1db265220730b976c5dc09e93958908ba30cb929066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03fb8ccdf58135bade0e37be9f6f1baea974f1f6eba510cd1945e4845f779db4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sups/Variante080a72ff804921ac54cf1db265220730b976c5dc09e93958908ba30cb929066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97882114-3a50-60f9-d127-a494940d8e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjSups_subset_left (ht : t₁ ⊆ t₂) : s ○ t₁ ⊆ s ○ t₂ :=
  disjSups_subset Subset.rfl ht
#align finset.disj_sups_subset_left Finset.disjSups_subset_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sups/Variante080a72ff804921ac54cf1db265220730b976c5dc09e93958908ba30cb929066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sups/Variante080a72ff804921ac54cf1db265220730b976c5dc09e93958908ba30cb929066.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bd93cae408b32f3b260a93ca7f729b5f7ee2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

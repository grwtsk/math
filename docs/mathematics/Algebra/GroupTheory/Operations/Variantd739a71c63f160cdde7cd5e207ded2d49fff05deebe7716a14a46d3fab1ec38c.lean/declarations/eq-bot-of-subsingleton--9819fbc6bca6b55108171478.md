# eq_bot_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9fa9d1-fe55-c44b-fc26-e9fb210b9cc0",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_subsingleton",
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
  "slug": "eq-bot-of-subsingleton--9819fbc6bca6b55108171478",
  "source": {
    "blob": "14a7258d37edd4a861952d8497629bf826588ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 927,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9819fbc6bca6b551081714785e7df650e9623745d0fdf5ae68e7358e915977d4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9fa9d1-fe55-c44b-fc26-e9fb210b9cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_subsingleton [Subsingleton S] : S = ⊥ := by
  rw [eq_bot_iff_forall]
  intro y hy
  simpa using congr_arg ((↑) : S → M) <| Subsingleton.elim (⟨y, hy⟩ : S) 1

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a7258d37edd4a861952d8497629bf826588ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

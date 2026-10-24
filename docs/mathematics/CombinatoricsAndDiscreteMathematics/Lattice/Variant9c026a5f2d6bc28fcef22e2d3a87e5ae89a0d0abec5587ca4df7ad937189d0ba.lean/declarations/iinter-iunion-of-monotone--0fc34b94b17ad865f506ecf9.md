# iInter_iUnion_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83963723-6c21-c3fe-7bfe-663a53b25740",
  "kind": "theorem",
  "lexical_name": "iInter_iUnion_of_monotone",
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
  "slug": "iinter-iunion-of-monotone--0fc34b94b17ad865f506ecf9",
  "source": {
    "blob": "925ee3fb8c1f0362e08f308b3d82b79c987d3f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc34b94b17ad865f506ecf93c20a358de1872c1750fd91fa12af9b9e894b422",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83963723-6c21-c3fe-7bfe-663a53b25740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInter_iUnion_of_monotone {ι ι' α : Type*} [Finite ι] [Preorder ι']
    [IsDirected ι' (swap (· ≤ ·))] [Nonempty ι'] {s : ι → ι' → Set α} (hs : ∀ i, Monotone (s i)) :
    ⋂ j : ι', ⋃ i : ι, s i j = ⋃ i : ι, ⋂ j : ι', s i j :=
  iInf_iSup_of_monotone hs

/-- A decreasing intersection distributes over finite union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925ee3fb8c1f0362e08f308b3d82b79c987d3f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

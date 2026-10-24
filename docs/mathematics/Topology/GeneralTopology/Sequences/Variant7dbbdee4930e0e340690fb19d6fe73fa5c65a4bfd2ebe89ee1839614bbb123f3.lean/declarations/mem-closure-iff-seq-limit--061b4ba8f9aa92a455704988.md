# mem_closure_iff_seq_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc6c20ac-f8c8-a468-6dad-50e340a5bed4",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff_seq_limit",
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
  "slug": "mem-closure-iff-seq-limit--061b4ba8f9aa92a455704988",
  "source": {
    "blob": "1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061b4ba8f9aa92a455704988f41df69cb3b8155f3e60770b69b8b7b11c5cda03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6c20ac-f8c8-a468-6dad-50e340a5bed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff_seq_limit [FrechetUrysohnSpace X] {s : Set X} {a : X} :
    a ∈ closure s ↔ ∃ x : ℕ → X, (∀ n : ℕ, x n ∈ s) ∧ Tendsto x atTop (𝓝 a) := by
  rw [← seqClosure_eq_closure]
  rfl
#align mem_closure_iff_seq_limit mem_closure_iff_seq_limit

/-- If the domain of a function `f : α → β` is a Fréchet-Urysohn space, then convergence
is equivalent to sequential convergence. See also `Filter.tendsto_iff_seq_tendsto` for a version
that works for any pair of filters assuming that the filter in the domain is countably generated.

This property is equivalent to the definition of `FrechetUrysohnSpace`, see
`FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

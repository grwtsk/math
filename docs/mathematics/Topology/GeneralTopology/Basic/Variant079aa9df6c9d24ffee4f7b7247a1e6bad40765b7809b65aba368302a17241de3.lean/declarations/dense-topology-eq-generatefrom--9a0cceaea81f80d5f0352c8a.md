# Dense.topology_eq_generateFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1a36c7-c088-9d0e-4d6d-269b801a4ca1",
  "kind": "theorem",
  "lexical_name": "Dense.topology_eq_generateFrom",
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
  "slug": "dense-topology-eq-generatefrom--9a0cceaea81f80d5f0352c8a",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1355,
    "line": 1337,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0cceaea81f80d5f0352c8a8be79122253e04959af1d962321bba2d13de06ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1a36c7-c088-9d0e-4d6d-269b801a4ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1337–1355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.topology_eq_generateFrom [DenselyOrdered α] {s : Set α} (hs : Dense s) :
    ‹TopologicalSpace α› = .generateFrom (Ioi '' s ∪ Iio '' s) := by
  refine (OrderTopology.topology_eq_generate_intervals (α := α)).trans ?_
  refine le_antisymm (generateFrom_anti ?_) (le_generateFrom ?_)
  · simp only [union_subset_iff, image_subset_iff]
    exact ⟨fun a _ ↦ ⟨a, .inl rfl⟩, fun a _ ↦ ⟨a, .inr rfl⟩⟩
  · rintro _ ⟨a, rfl | rfl⟩
    · rw [hs.Ioi_eq_biUnion]
      let _ := generateFrom (Ioi '' s ∪ Iio '' s)
      exact isOpen_iUnion fun x ↦ isOpen_iUnion fun h ↦ .basic _ <| .inl <| mem_image_of_mem _ h.1
    · rw [hs.Iio_eq_biUnion]
      let _ := generateFrom (Ioi '' s ∪ Iio '' s)
      exact isOpen_iUnion fun x ↦ isOpen_iUnion fun h ↦ .basic _ <| .inr <| mem_image_of_mem _ h.1

variable (α)

/-- Let `α` be a densely ordered linear order with order topology. If `α` is a separable space, then
it has second countable topology. Note that the "densely ordered" assumption cannot be dropped, see
[double arrow space](https://topology.pi-base.org/spaces/S000093) for a counterexample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L1337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# graphPreTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:356029092a465ede1fbc650ea1b53b221233c47fa0d695bc4bef39d7b99ec47f",
  "kind": "def",
  "lexical_name": "graphPreTopology",
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
  "slug": "graphpretopology--4c8ba8139c3683464667d2ec",
  "source": {
    "blob": "9e81e974526d9205dffc8b5af88137173536579b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 322,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c8ba8139c3683464667d2ecb31a1f24a587f49421488589f5f78734d1ac0edf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:356029092a465ede1fbc650ea1b53b221233c47fa0d695bc4bef39d7b99ec47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graphPreTopology
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (_G : DirectedGraph Vertex Edge) (I : ClosedInterval.{uInterval}) :
    TopologicalSpaceLike (GraphPrePoint Vertex Edge I.Point) where
  IsOpen := fun U =>
    ∀ e, I.topology.IsOpen (fun t => U (.edgePoint e t))
  isOpen_univ := by
    intro _e
    exact I.topology.isOpen_univ
  isOpen_inter := by
    intro U V hU hV e
    exact I.topology.isOpen_inter _ _ (hU e) (hV e)
  isOpen_sUnion := by
    intro 𝒰 h𝒰 e
    let edgeFamily : Set (Set I.Point) :=
      fun A => ∃ U, U ∈ 𝒰 ∧
        A = fun t => U (GraphPrePoint.edgePoint e t)
    have hopen : ∀ A, A ∈ edgeFamily → I.topology.IsOpen A := by
      intro A hA
      obtain ⟨U, hU, rfl⟩ := hA
      exact h𝒰 U hU e
    have hOpenUnion := I.topology.isOpen_sUnion edgeFamily hopen
    have hEq : Set.sUnion edgeFamily =
        (fun t => (Set.sUnion 𝒰) (GraphPrePoint.edgePoint e t)) := by
      apply Set.ext
      intro t
      constructor
      · intro ht
        obtain ⟨A, ⟨U, hU, rfl⟩, htU⟩ := ht
        exact ⟨U, hU, htU⟩
      · intro ht
        obtain ⟨U, hU, htU⟩ := ht
        exact ⟨(fun s => U (GraphPrePoint.edgePoint e s)),
          ⟨U, hU, rfl⟩, htU⟩
    rw [hEq] at hOpenUnion
    exact hOpenUnion

/-- A subset supported only on vertices is open, exposing discreteness there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e81e974526d9205dffc8b5af88137173536579b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

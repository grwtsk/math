# quotientTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2795d76da68b293194580f1b26ed397501aaeb9c5a66cb737f9d7650081d6bd",
  "kind": "def",
  "lexical_name": "quotientTopology",
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
  "slug": "quotienttopology--cec6397ed4071e81851e84dc",
  "source": {
    "blob": "d0b220f8ce10e5792df44657ae94d8c8e013fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cec6397ed4071e81851e84dc19c2e185d16bb2a15cb1388ed987159a5cd98b2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2795d76da68b293194580f1b26ed397501aaeb9c5a66cb737f9d7650081d6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientTopology {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (q : X → Y) :
    TopologicalSpaceLike Y where
  IsOpen := fun V => TX.IsOpen (Set.preimage q V)
  isOpen_univ := TX.isOpen_univ
  isOpen_inter := by
    intro U V hU hV
    exact TX.isOpen_inter _ _ hU hV
  isOpen_sUnion := by
    intro 𝒰 h𝒰
    let preimages : Set (Set X) :=
      fun A => ∃ U, U ∈ 𝒰 ∧ A = Set.preimage q U
    have hopen : ∀ A, A ∈ preimages → TX.IsOpen A := by
      intro A hA
      obtain ⟨U, hU, rfl⟩ := hA
      exact h𝒰 U hU
    have h := TX.isOpen_sUnion preimages hopen
    have heq : Set.sUnion preimages =
        Set.preimage q (Set.sUnion 𝒰) := by
      apply Set.ext
      intro x
      constructor
      · intro hx
        obtain ⟨A, ⟨U, hU, rfl⟩, hxU⟩ := hx
        exact ⟨U, hU, hxU⟩
      · intro hx
        obtain ⟨U, hU, hxU⟩ := hx
        exact ⟨Set.preimage q U, ⟨U, hU, rfl⟩, hxU⟩
    rw [heq] at h
    exact h

/-- A family of subsets covers a target subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b220f8ce10e5792df44657ae94d8c8e013fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a7832385a33eb7a13246ffbfe8bff166594b4283dbe728ff10b1f8b310d3140",
  "kind": "def",
  "lexical_name": "restrict",
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
  "slug": "restrict--f15a3dbab4c94510e7a87344",
  "source": {
    "blob": "9ab959332b9188071df0df2fae6a9c90e725afc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f15a3dbab4c94510e7a873444c431b008509c487664528e4ce88b72629b2772d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a7832385a33eb7a13246ffbfe8bff166594b4283dbe728ff10b1f8b310d3140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrict (π : Prepartition I) (J : Box ι) : Prepartition J :=
  ofWithBot (π.boxes.image fun J' : Box ι => J ⊓ J')
    (fun J' hJ' => by
      rcases Finset.mem_image.1 hJ' with ⟨J', -, rfl⟩
      exact inf_le_left)
    (by
      simp only [Set.Pairwise, onFun, Finset.mem_coe, Finset.mem_image]
      rintro _ ⟨J₁, h₁, rfl⟩ _ ⟨J₂, h₂, rfl⟩ Hne
      have : J₁ ≠ J₂ := by
        rintro rfl
        exact Hne rfl
      exact ((Box.disjoint_coe.2 <| π.disjoint_coe_of_mem h₁ h₂ this).inf_left' _).inf_right' _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ab959332b9188071df0df2fae6a9c90e725afc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

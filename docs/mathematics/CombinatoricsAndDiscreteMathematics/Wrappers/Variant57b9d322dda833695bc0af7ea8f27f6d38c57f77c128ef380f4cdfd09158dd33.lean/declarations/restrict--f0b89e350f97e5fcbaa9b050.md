# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8478d3d-4303-f248-e8af-cc566ddbc994",
  "kind": "theorem",
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
  "slug": "restrict--f0b89e350f97e5fcbaa9b050",
  "source": {
    "blob": "cbb50677e757e04c4b623b6cf9cbe50243cb9894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b89e350f97e5fcbaa9b050ff6acb55c492e08eac1a8d07604d52daed1d0dd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8478d3d-4303-f248-e8af-cc566ddbc994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict {C : Set V} {v w : V} {p : Bool}
    (h : SignedPath E v w p) (hv : v ∈ C)
    (hi : ∀ z, Reach E v z → Reach E z w → z ∈ C) :
    SignedPath (fun x y p => E x y p ∧ x ∈ C ∧ y ∈ C) v w p := by
  induction h with
  | nil v => exact .nil _
  | @cons u v w p q he ht ih =>
      have hv' := hi v (Reach.single he) ⟨q, ht⟩
      exact .cons ⟨he, hv, hv'⟩ (ih hv' (fun z hz hzw =>
        hi z ((Reach.single he).trans hz) hzw))
end SignedPath

namespace IsComponent
variable {V : Type*} {E : V → V → Bool → Prop} {C : Set V}

/-- An odd closed walk in an SCC supplies both parities between all vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb50677e757e04c4b623b6cf9cbe50243cb9894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

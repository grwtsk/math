# join_prop_eq_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1e55523-41d4-219a-10d5-5c477c575488",
  "kind": "theorem",
  "lexical_name": "join_prop_eq_or",
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
  "slug": "join-prop-eq-or--66988adddc1ddf36e2912c0f",
  "source": {
    "blob": "10cf6bca559faef911fbb9eee2e661c427643f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66988adddc1ddf36e2912c0f81b00c594e5c348848b61bb62e5780221a97c8a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e55523-41d4-219a-10d5-5c477c575488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem join_prop_eq_or (a b : Prop) : (a ⊔ b : Prop) = (a ∨ b) := by
  apply propext
  constructor
  · intro hab
    exact (join_le a b (a ∨ b) (fun ha => Or.inl ha) (fun hb => Or.inr hb)) hab
  · intro hab
    cases hab with
    | inl ha => exact (left_le_join a b) ha
    | inr hb => exact (right_le_join a b) hb

end Lean.Order

open Classical

namespace Lean.Order

/-- Embedding of propositions into an CompleteLattice type. `⌜p⌝` embeds `p : Prop` as `⊤` if `p` holds
and `⊥` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cf6bca559faef911fbb9eee2e661c427643f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

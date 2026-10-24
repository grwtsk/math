# flip₂_continuous'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b85b21af-b14a-3d8b-c588-ca9529d82b50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:556c0fd8-8bf2-ed5d-03b0-f77bad5db767",
  "kind": "theorem",
  "lexical_name": "flip₂_continuous'",
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
  "slug": "flip-continuous--fd06a8672a5604fe8c35dd64",
  "source": {
    "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 427,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd06a8672a5604fe8c35dd640e4cc3b1c8bafa519d7c16c274519581b83efcf7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:556c0fd8-8bf2-ed5d-03b0-f77bad5db767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flip₂_continuous' (f : γ → ∀ x, β x) (hf : ∀ x, Continuous' fun g => f g x) :
    Continuous' f :=
  Continuous.of_bundled _ (fun x y h a => (hf a).to_monotone h)
    (by intro c; ext a; apply (hf a).to_bundled _ c)
#align pi.omega_complete_partial_order.flip₂_continuous' Pi.OmegaCompletePartialOrder.flip₂_continuous'

end OmegaCompletePartialOrder

end Pi

namespace Prod

open OmegaCompletePartialOrder

variable {α : Type*} {β : Type*} {γ : Type*}
variable [OmegaCompletePartialOrder α]
variable [OmegaCompletePartialOrder β]
variable [OmegaCompletePartialOrder γ]

/-- The supremum of a chain in the product `ω`-CPO. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d5ca006de8845a77665832a71a6d7b8914927f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

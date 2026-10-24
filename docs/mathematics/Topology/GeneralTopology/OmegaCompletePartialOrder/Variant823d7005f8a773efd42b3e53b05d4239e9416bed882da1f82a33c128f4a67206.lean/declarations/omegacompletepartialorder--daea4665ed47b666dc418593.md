# OmegaCompletePartialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4677986f51f422c080fb3fea2cf69ca3c43e9beae91f8301253a660358c594e9",
  "kind": "class",
  "lexical_name": "OmegaCompletePartialOrder",
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
  "slug": "omegacompletepartialorder--daea4665ed47b666dc418593",
  "source": {
    "blob": "a61cda59f861e627e095c95b94074e82194c9ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daea4665ed47b666dc418593e36c7703fe30e4162c439621ec0a0b5e84574c09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4677986f51f422c080fb3fea2cf69ca3c43e9beae91f8301253a660358c594e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OmegaCompletePartialOrder (α : Type*) extends PartialOrder α where
  /-- The supremum of an increasing sequence -/
  ωSup : Chain α → α
  /-- `ωSup` is an upper bound of the increasing sequence -/
  le_ωSup : ∀ c : Chain α, ∀ i, c i ≤ ωSup c
  /-- `ωSup` is a lower bound of the set of upper bounds of the increasing sequence -/
  ωSup_le : ∀ (c : Chain α) (x), (∀ i, c i ≤ x) → ωSup c ≤ x
#align omega_complete_partial_order OmegaCompletePartialOrder

namespace OmegaCompletePartialOrder

variable {α : Type u} {β : Type v} {γ : Type*}

variable [OmegaCompletePartialOrder α]

/-- Transfer an `OmegaCompletePartialOrder` on `β` to an `OmegaCompletePartialOrder` on `α`
using a strictly monotone function `f : β →o α`, a definition of ωSup and a proof that `f` is
continuous with regard to the provided `ωSup` and the ωCPO on `α`. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61cda59f861e627e095c95b94074e82194c9ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

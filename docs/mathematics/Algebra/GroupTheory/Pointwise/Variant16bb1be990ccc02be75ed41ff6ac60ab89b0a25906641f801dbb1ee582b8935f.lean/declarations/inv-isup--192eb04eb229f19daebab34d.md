# inv_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d68d89d-d45d-055c-36a4-598cf1751a1c",
  "kind": "theorem",
  "lexical_name": "inv_iSup",
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
  "slug": "inv-isup--192eb04eb229f19daebab34d",
  "source": {
    "blob": "da1043e1c4e35defb7b43aa5136ff783afde8e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192eb04eb229f19daebab34d0bbfd720bdf666876da705348d273af916ff833c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d68d89d-d45d-055c-36a4-598cf1751a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_iSup {ι : Sort*} (S : ι → Submonoid G) : (⨆ i, S i)⁻¹ = ⨆ i, (S i)⁻¹ :=
  (invOrderIso : Submonoid G ≃o Submonoid G).map_iSup _

end Submonoid

namespace Submonoid

section Monoid

variable [Monoid α] [MulDistribMulAction α M]

-- todo: add `to_additive`?
/-- The action on a submonoid corresponding to applying the action to every element.

This is available as an instance in the `Pointwise` locale. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da1043e1c4e35defb7b43aa5136ff783afde8e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

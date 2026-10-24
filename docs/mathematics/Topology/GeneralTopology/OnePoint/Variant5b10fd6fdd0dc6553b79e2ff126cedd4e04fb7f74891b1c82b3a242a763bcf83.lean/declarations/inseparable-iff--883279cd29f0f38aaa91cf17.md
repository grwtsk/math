# inseparable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b8fc555-4d3a-bcc2-5463-2485e09276d5",
  "kind": "theorem",
  "lexical_name": "inseparable_iff",
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
  "slug": "inseparable-iff--883279cd29f0f38aaa91cf17",
  "source": {
    "blob": "ebfc4a87d097924644bff8effb05f637dffd72e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 427,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:883279cd29f0f38aaa91cf17658cef6d3787a7abc330d3da78332ba10bad7a4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8fc555-4d3a-bcc2-5463-2485e09276d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inseparable_iff {x y : OnePoint X} :
    Inseparable x y ↔ x = ∞ ∧ y = ∞ ∨ ∃ x' : X, x = x' ∧ ∃ y' : X, y = y' ∧ Inseparable x' y' := by
  induction x using OnePoint.rec <;> induction y using OnePoint.rec <;>
    simp [not_inseparable_infty_coe, not_inseparable_coe_infty, coe_eq_coe, Inseparable.refl]
#align alexandroff.inseparable_iff OnePoint.inseparable_iff

/-!
### Compactness and separation properties

In this section we prove that `OnePoint X` is a compact space; it is a T₀ (resp., T₁) space if
the original space satisfies the same separation axiom. If the original space is a locally compact
Hausdorff space, then `OnePoint X` is a normal (hence, T₃ and Hausdorff) space.

Finally, if the original space `X` is *not* compact and is a preconnected space, then
`OnePoint X` is a connected space.
-/


/-- For any topological space `X`, its one point compactification is a compact space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfc4a87d097924644bff8effb05f637dffd72e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

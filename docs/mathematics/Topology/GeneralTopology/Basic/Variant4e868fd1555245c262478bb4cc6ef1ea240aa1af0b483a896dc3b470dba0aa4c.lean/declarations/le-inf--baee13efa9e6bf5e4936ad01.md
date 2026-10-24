# le_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad6f2f2-9896-9832-222c-4db4dea82e91",
  "kind": "theorem",
  "lexical_name": "le_inf",
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
  "slug": "le-inf--baee13efa9e6bf5e4936ad01",
  "source": {
    "blob": "fb1a85629a9958306a476a1bcc053e1db528ce27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 851,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baee13efa9e6bf5e4936ad01979ba266ae9cfa8f60e38aef7400f199de8e4ab4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad6f2f2-9896-9832-222c-4db4dea82e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_inf {a b c : CauSeq α abs} (hb : a ≤ b) (hc : a ≤ c) : a ≤ b ⊓ c := by
  obtain hb | hb := hb
  · obtain hc | hc := hc
    · exact Or.inl (CauSeq.lt_inf hb hc)
    · replace hb := le_of_eq_of_le (Setoid.symm hc) hb.le
      refine le_of_eq_of_le hc (Or.inr ?_)
      exact Setoid.symm (CauSeq.inf_eq_right hb)
  · replace hc := le_of_eq_of_le (Setoid.symm hb) hc
    refine le_of_eq_of_le hb (Or.inr ?_)
    exact Setoid.symm (CauSeq.inf_eq_left hc)

/-! Note that `DistribLattice (CauSeq α abs)` is not true because there is no `PartialOrder`. -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1a85629a9958306a476a1bcc053e1db528ce27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

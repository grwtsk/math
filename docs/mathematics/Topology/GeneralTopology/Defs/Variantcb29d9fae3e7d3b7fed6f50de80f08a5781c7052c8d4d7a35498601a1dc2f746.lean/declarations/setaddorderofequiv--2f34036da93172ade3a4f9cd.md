# setAddOrderOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a66e52523c1782db1bb49558102b9d4c2867200fa5405236c82f5259d5e8727",
  "kind": "def",
  "lexical_name": "setAddOrderOfEquiv",
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
  "slug": "setaddorderofequiv--2f34036da93172ade3a4f9cd",
  "source": {
    "blob": "dc71366f4c55aaf40d5382f07cce3231dc3986f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 684,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f34036da93172ade3a4f9cd1c0ff7cb8a1b443b288fd1363dd2ab4ae4320c60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a66e52523c1782db1bb49558102b9d4c2867200fa5405236c82f5259d5e8727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setAddOrderOfEquiv {n : ℕ} (hn : 0 < n) :
    { u : AddCircle p | addOrderOf u = n } ≃ { m | m < n ∧ m.gcd n = 1 } :=
  Equiv.symm <|
    Equiv.ofBijective (fun m => ⟨↑((m : 𝕜) / n * p), addOrderOf_div_of_gcd_eq_one hn m.prop.2⟩)
      (by
        refine ⟨fun m₁ m₂ h => Subtype.ext ?_, fun u => ?_⟩
        · simp_rw [Subtype.mk_eq_mk, natCast_div_mul_eq_nsmul] at h
          refine nsmul_injOn_Iio_addOrderOf ?_ ?_ h <;> rw [addOrderOf_period_div hn]
          exacts [m₁.2.1, m₂.2.1]
        · obtain ⟨m, hmn, hg, he⟩ := (addOrderOf_eq_pos_iff hn).mp u.2
          exact ⟨⟨m, hmn, hg⟩, Subtype.ext he⟩)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc71366f4c55aaf40d5382f07cce3231dc3986f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

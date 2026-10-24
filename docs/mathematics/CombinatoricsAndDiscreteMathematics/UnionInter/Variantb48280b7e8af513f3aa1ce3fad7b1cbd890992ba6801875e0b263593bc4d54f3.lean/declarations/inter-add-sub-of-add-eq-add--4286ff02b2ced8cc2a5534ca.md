# inter_add_sub_of_add_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e7fb490-069f-75ce-f177-be5a5b6840ed",
  "kind": "theorem",
  "lexical_name": "inter_add_sub_of_add_eq_add",
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
  "slug": "inter-add-sub-of-add-eq-add--4286ff02b2ced8cc2a5534ca",
  "source": {
    "blob": "63fbbd6e5dfd9137a0bfd92929c995d853dc05ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4286ff02b2ced8cc2a5534cab5a62a7fbe2be5bd7ab75245037b6bc5fd068bb1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e7fb490-069f-75ce-f177-be5a5b6840ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_add_sub_of_add_eq_add [DecidableEq α] {M N P Q : Multiset α} (h : M + N = P + Q) :
    (N ∩ Q) + (P - M) = N := by
  ext x
  rw [Multiset.count_add, Multiset.count_inter, Multiset.count_sub]
  have h0 : M.count x + N.count x = P.count x + Q.count x := by
    rw [Multiset.ext] at h
    simp_all only [Multiset.mem_add, Multiset.count_add]
  omega

/-! ### Disjoint multisets -/


/-- `Disjoint s t` means that `s` and `t` have no elements in common. -/
@[deprecated _root_.Disjoint (since := "2024-11-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63fbbd6e5dfd9137a0bfd92929c995d853dc05ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkFinSnocOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ae792200d1316e31dd90c364dd22d51d0a3e04fc9b04be060099e4154ea6a2b",
  "kind": "def",
  "lexical_name": "mkFinSnocOfLE",
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
  "slug": "mkfinsnocofle--f5427bd7f363dcdeb9c4ea06",
  "source": {
    "blob": "c2cc98a0e87750d635a64afbe0c2cc0213d594c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5427bd7f363dcdeb9c4ea064f2a368f1c1808a09ded29fecf01237f3bc67e54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ae792200d1316e31dd90c364dd22d51d0a3e04fc9b04be060099e4154ea6a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkFinSnocOfLE {n : ℕ} {N O : Submodule R M} (b : Basis (Fin n) R N)
    (hNO : N ≤ O) (y : M) (yO : y ∈ O) (hli : ∀ (c : R), ∀ x ∈ N, c • y + x = 0 → c = 0)
    (hsp : ∀ z ∈ O, ∃ c : R, z + c • y ∈ N) : Basis (Fin (n + 1)) R O :=
  mkFinSnoc (b.map (Submodule.comapSubtypeEquivOfLe hNO).symm) ⟨y, yO⟩
    (fun c x hc hx => hli c x (Submodule.mem_comap.mp hc) (congr_arg ((↑) : O → M) hx))
    fun z => hsp z z.2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2cc98a0e87750d635a64afbe0c2cc0213d594c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# exists_eq_T_zpow_of_c_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3259c12d-4841-7e65-94b7-5e898daae086",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad3e2571-04d9-1988-3c25-3ca177fc3356",
  "kind": "theorem",
  "lexical_name": "exists_eq_T_zpow_of_c_eq_zero",
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
  "slug": "exists-eq-t-zpow-of-c-eq-zero--bc1268e5770ef1032834acb3",
  "source": {
    "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 325,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc1268e5770ef1032834acb33c561afce0b93c6b13f2495bd6cc3fbcf57183af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad3e2571-04d9-1988-3c25-3ca177fc3356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_T_zpow_of_c_eq_zero (hc : g 1 0 = 0) :
    ∃ n : ℤ, ∀ z : ℍ, g • z = T ^ n • z := by
  have had := g.det_coe
  replace had : g 0 0 * g 1 1 = 1 := by rw [det_fin_two, hc] at had; omega
  rcases Int.eq_one_or_neg_one_of_mul_eq_one' had with (⟨ha, hd⟩ | ⟨ha, hd⟩)
  · use g 0 1
    suffices g = T ^ g 0 1 by intro z; conv_lhs => rw [this]
    ext i j; fin_cases i <;> fin_cases j <;>
      simp [ha, hc, hd, coe_T_zpow, show (1 : Fin (0 + 2)) = (1 : Fin 2) from rfl]
  · use -(g 0 1)
    suffices g = -T ^ (-(g 0 1)) by intro z; conv_lhs => rw [this, SL_neg_smul]
    ext i j; fin_cases i <;> fin_cases j <;>
      simp [ha, hc, hd, coe_T_zpow, show (1 : Fin (0 + 2)) = (1 : Fin 2) from rfl]

-- If `c = 1`, then `g` factorises into a product terms involving only `T` and `S`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11af827f4bf5f7597004c39e36c8528150e8111d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

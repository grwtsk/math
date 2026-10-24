# smul_eq_lcRow0_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c20d6364-5f81-4366-7418-78f1949a151c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f943217-824e-5aa9-c2c0-74ab6575b946",
  "kind": "theorem",
  "lexical_name": "smul_eq_lcRow0_add",
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
  "slug": "smul-eq-lcrow0-add--16a8c94b11eb56530fcdc644",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a8c94b11eb56530fcdc6442285f11e8d64f7e0cd23b74934b3927602942dff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f943217-824e-5aa9-c2c0-74ab6575b946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_eq_lcRow0_add {p : Fin 2 → ℤ} (hp : IsCoprime (p 0) (p 1)) (hg : g 1 = p) :
    ↑(g • z) =
      (lcRow0 p ↑(g : SL(2, ℝ)) : ℂ) / ((p 0 : ℂ) ^ 2 + (p 1 : ℂ) ^ 2) +
        ((p 1 : ℂ) * z - p 0) / (((p 0 : ℂ) ^ 2 + (p 1 : ℂ) ^ 2) * (p 0 * z + p 1)) := by
  have nonZ1 : (p 0 : ℂ) ^ 2 + (p 1 : ℂ) ^ 2 ≠ 0 := mod_cast hp.sq_add_sq_ne_zero
  have : ((↑) : ℤ → ℝ) ∘ p ≠ 0 := fun h => hp.ne_zero (by ext i; simpa using congr_fun h i)
  have nonZ2 : (p 0 : ℂ) * z + p 1 ≠ 0 := by simpa using linear_ne_zero z this
  subst hg
  rw [coe_specialLinearGroup_apply]
  replace nonZ2 : z * (g 1 0 : ℂ) + g 1 1 ≠ 0 := by convert! nonZ2 using 1; ring
  have H := congr(Int.cast (R := ℂ) $(det_fin_two g))
  simp at H
  simp [field]
  linear_combination -((z : ℂ) * (g 1 1 : ℂ) - g 1 0) * H

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

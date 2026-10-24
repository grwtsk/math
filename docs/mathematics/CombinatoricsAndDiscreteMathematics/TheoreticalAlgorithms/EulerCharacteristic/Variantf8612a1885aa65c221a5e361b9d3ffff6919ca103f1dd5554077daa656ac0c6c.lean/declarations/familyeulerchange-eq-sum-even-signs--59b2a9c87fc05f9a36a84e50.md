# familyEulerChange_eq_sum_even_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d80e24-a0d6-c9f2-094f-41bcfca3858b",
  "kind": "theorem",
  "lexical_name": "familyEulerChange_eq_sum_even_signs",
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
  "slug": "familyeulerchange-eq-sum-even-signs--59b2a9c87fc05f9a36a84e50",
  "source": {
    "blob": "7e4ff495deaff81c0e560e13688afb1ed618e830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b2a9c87fc05f9a36a84e507c5fd3826b94ac685962bd1434d76b406f7ad630",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d80e24-a0d6-c9f2-094f-41bcfca3858b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem familyEulerChange_eq_sum_even_signs
    (surgeries : List Dimension)
    (heven : ∀ d ∈ surgeries, Even d.ambient) :
    familyEulerChange surgeries =
      (surgeries.map fun d => 2 * (-1 : Int) ^ (d.p + 1)).sum := by
  induction surgeries with
  | nil => rfl
  | cons d surgeries ih =>
      have hd : Even d.ambient := heven d (by simp)
      have htail : ∀ e ∈ surgeries, Even e.ambient := by
        intro e he
        exact heven e (by simp [he])
      change d.eulerChange + familyEulerChange surgeries =
        2 * (-1 : Int) ^ (d.p + 1) +
          (surgeries.map fun e => 2 * (-1 : Int) ^ (e.p + 1)).sum
      rw [d.eulerChange_eq_two_mul_sign_of_even_ambient hd, ih htail]

end Surface.SmoothFramedSurgery.EulerCharacteristic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4ff495deaff81c0e560e13688afb1ed618e830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

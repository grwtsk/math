# sum_Icc_conductorThreeComplexVonMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd7c2568-ce41-4e08-456e-724495a473a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a8162d1-990e-dc81-148a-e6fca67ead5e",
  "kind": "theorem",
  "lexical_name": "sum_Icc_conductorThreeComplexVonMangoldt",
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
  "slug": "sum-icc-conductorthreecomplexvonmangoldt--4d66e544bca3706b648883aa",
  "source": {
    "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d66e544bca3706b648883aa7fa346bb052cb3f036edb1aaf4cc8b6bb31ab19b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8162d1-990e-dc81-148a-e6fca67ead5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_conductorThreeComplexVonMangoldt (x : ℕ) :
    (∑ n ∈ Icc 1 x, conductorThreeComplexVonMangoldt n) =
      (conductorThreePsi x : ℂ) := by
  rw [conductorThreePsi]
  push_cast
  rw [Nat.range_succ_eq_Icc_zero,
    ← insert_Icc_add_one_left_eq_Icc x.zero_le,
    sum_insert (by simp)]
  simp only [conductorThreeComplexVonMangoldt,
    twistedVonMangoldtThree, conductorThreeCharacter_eq_intCast]
  simp

@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5361e98c4071e3b529b7d774f0b91017bbe2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

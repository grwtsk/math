# HasSubst.truncTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fe7b2c38a8895ae64b404efa4996b2d8659d60c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba6ad87-5df3-3066-a8ae-68ffa43a085d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26fbf27f-032d-74b3-df9c-e89729715a8d",
  "kind": "lemma",
  "lexical_name": "HasSubst.truncTotal",
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
  "slug": "hassubst-trunctotal--4e0ddb512a04ec60fec5cfbc",
  "source": {
    "blob": "9fe7b2c38a8895ae64b404efa4996b2d8659d60c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0ddb512a04ec60fec5cfbc3779f78c69613d39e08ce7a97987bca8a6bb0216",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26fbf27f-032d-74b3-df9c-e89729715a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasSubst.truncTotal {a : σ → MvPowerSeries τ S} {x : σ → ℕ} [Finite τ]
    (ha : HasSubst a) : HasSubst (fun i ↦ ((a i).truncTotal (x i)).toMvPowerSeries) where
  const_coeff i := by
    rw [← coeff_zero_eq_constantCoeff_apply, MvPolynomial.coeff_coe,
      ← MvPolynomial.constantCoeff_eq, constantCoeff_truncTotal_eq_ite]
    split_ifs <;> simp [ha.const_coeff i]
  coeff_zero d :=
    (ha.coeff_zero d).subset fun i => by contrapose; simp +contextual [coeff_truncTotal_eq_ite]

/-- Substitution of power series into a power series

It coincides with evaluation when `f` is a polynomial, or under `HasSubst a`.
Otherwise, it is given the dummy value `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe7b2c38a8895ae64b404efa4996b2d8659d60c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

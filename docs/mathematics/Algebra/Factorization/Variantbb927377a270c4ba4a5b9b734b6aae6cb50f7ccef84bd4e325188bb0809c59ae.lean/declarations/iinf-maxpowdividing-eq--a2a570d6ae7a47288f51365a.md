# iInf_maxPowDividing_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4988d818-3b85-6a7e-fb00-25cb0a04d5f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:710c7932-4945-989e-6165-bebe52a59add",
  "kind": "theorem",
  "lexical_name": "iInf_maxPowDividing_eq",
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
  "slug": "iinf-maxpowdividing-eq--a2a570d6ae7a47288f51365a",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 212,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a570d6ae7a47288f51365a015e1ca3d20bdad70279f928d44b17f73cec6c89",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:710c7932-4945-989e-6165-bebe52a59add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_maxPowDividing_eq {I : Ideal R} (h0 : I ≠ 0) :
    ⨅ i : HeightOneSpectrum R, i.maxPowDividing I = I := by
  nth_rw 2 [← Ideal.finprod_heightOneSpectrum_factorization h0]
  classical
  rw [finprod_def, dite_eq_left (Ideal.hasFiniteMulSupport h0),
    Ideal.prod_eq_iInf_of_pairwise_isCoprime]
  · ext x
    constructor
    · aesop
    · simp only [Finite.mem_toFinset, mem_mulSupport, one_eq_top, ne_eq, Submodule.mem_iInf]
      intro h i
      by_cases i.maxPowDividing I = ⊤ <;> simp_all
  · intro x hx y hy hxy
    apply IsDedekindDomain.HeightOneSpectrum.isCoprime_pow_of_ne _ _ hxy

variable (K)

/-- The ideal `I` equals the finprod `∏_v v^(val_v(I))`, when both sides are regarded as fractional
ideals of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

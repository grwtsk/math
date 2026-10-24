# State.extracted_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc18778-897f-d188-ff4b-e3457b253380",
  "kind": "theorem",
  "lexical_name": "State.extracted_exact",
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
  "slug": "state-extracted-exact--1cf1f166708d3d6029d92088",
  "source": {
    "blob": "64cd8c1309f84658298d38c6cedf1b08eca26035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cf1f166708d3d6029d92088450388ed3dc3ff2a9399cc037887b22fd194d75d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc18778-897f-d188-ff4b-e3457b253380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem State.extracted_exact {N p : ℕ} (s : State N) (hp : p ∈ s.extracted.support) :
    N.factorization p = s.extracted p := by
  calc
    N.factorization p = (s.residual * primeProduct s.extracted).factorization p :=
      congrArg (fun n : ℕ => n.factorization p) s.conservation
    _ = s.extracted p := ?_
  rw [Nat.factorization_mul s.residual_pos.ne' (primeProduct_pos s.extracted_primes).ne']
  rw [primeProduct, Nat.prod_pow_factorization_eq_self s.extracted_primes]
  simp [Nat.factorization_eq_zero_of_not_dvd (s.extracted_resolved p hp)]

/-- A closed prime-power factorization, with exact integer reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant2630cb9fd9a09f36267e690cd8f9f47f187abed506777e5b444d3517b9868b60.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64cd8c1309f84658298d38c6cedf1b08eca26035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

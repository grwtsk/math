# exponentialWeight_primeProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d2a5766-9a1c-0cd2-448d-b7ff957f29a5",
  "kind": "theorem",
  "lexical_name": "exponentialWeight_primeProduct",
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
  "slug": "exponentialweight-primeproduct--3e03063edd5ef29d7bc1decf",
  "source": {
    "blob": "c8306cc01af4928e3056636576250f63490b8522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e03063edd5ef29d7bc1decfb04f1814ff2684d9d86611fb0b89bb0975882cf8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d2a5766-9a1c-0cd2-448d-b7ff957f29a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentialWeight_primeProduct (s : ℂ) (U : Finset ℕ)
    (hU : ∀ p ∈ U, p.Prime) :
    exponentialWeight s (primeProduct U) = ∏ p ∈ U, exponentialWeight s p := by
  induction U using Finset.induction_on with
  | empty => simp [exponentialWeight, primeProduct]
  | @insert p U hp ih =>
      have hpPrime : p.Prime := hU p (Finset.mem_insert_self p U)
      have hUPrime : ∀ q ∈ U, q.Prime :=
        fun q hq => hU q (Finset.mem_insert_of_mem hq)
      have hProductPositive : 0 < ∏ q ∈ U, q :=
        Finset.prod_pos fun q hq => (hUPrime q hq).pos
      have ih' : exponentialWeight s (∏ q ∈ U, q) =
          ∏ q ∈ U, exponentialWeight s q := by
        simpa only [primeProduct] using ih hUPrime
      simp only [primeProduct, Finset.prod_insert hp]
      rw [exponentialWeight_mul hpPrime.pos hProductPositive s, ih']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8306cc01af4928e3056636576250f63490b8522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

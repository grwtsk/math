# grading.right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49464936-20da-9b38-4f2e-3ff429da6471",
  "kind": "theorem",
  "lexical_name": "grading.right_inv",
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
  "slug": "grading-right-inv--cd8e22702a88a55b7439d1f4",
  "source": {
    "blob": "b00483a529a1dd1a56e609942771b3f25c5f5a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd8e22702a88a55b7439d1f4eff5b7335c61fe82d35662b83d3d809e725947c9",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49464936-20da-9b38-4f2e-3ff429da6471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grading.right_inv : Function.RightInverse (coeLinearMap (grading R)) grading.decompose :=
  fun zz => by
  induction' zz using DirectSum.induction_on with i zz d1 d2 ih1 ih2
  · simp only [map_zero]
  · rcases i with (_ | ⟨⟨⟩⟩) <;> rcases zz with ⟨⟨a, b⟩, hab : _ = _⟩ <;> dsimp at hab <;>
      cases hab <;>
      -- Porting note: proof was `decide`
      -- now we need a `simp` and two `erw` subproofs...
      simp only [coeLinearMap_of, decompose, AddMonoidHom.coe_mk,
        ZeroHom.coe_mk, sub_self, sub_zero]
    · erw [map_zero (of (grading R ·) 1), add_zero]; rfl
    · erw [map_zero (of (grading R ·) 0), zero_add]; rfl
  · simp only [map_add, ih1, ih2]
#align counterexample.counterexample_not_prime_but_homogeneous_prime.grading.right_inv Counterexample.CounterexampleNotPrimeButHomogeneousPrime.grading.right_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00483a529a1dd1a56e609942771b3f25c5f5a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

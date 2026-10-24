# finiteEulerProductOf_expands_boundedSmoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee4544e-e4eb-1030-f58e-fcca9120e5fb",
  "kind": "theorem",
  "lexical_name": "finiteEulerProductOf_expands_boundedSmoothNumbers",
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
  "slug": "finiteeulerproductof-expands-boundedsmoothnumbers--0c00f14e590002868b72cce8",
  "source": {
    "blob": "2734ba1986cbd59a76bb98ae6c65d368dd6da64e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c00f14e590002868b72cce8b396797cae104a5337b84f49507a0568bc4a4022",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee4544e-e4eb-1030-f58e-fcca9120e5fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteEulerProductOf_expands_boundedSmoothNumbers
    [CommSemiring R]
    (w : ArithFn R)
    (hw : IsCompletelyMultiplicative w)
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteEulerProductOf w S K =
      ∑ n ∈ boundedSmoothNumbers S K, w n := by
  classical
  rw [finiteEulerProductOf_expands_exponent_vectors]
  calc
    (∑ e : ExponentVector S K,
        ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val))
        = ∑ e : ExponentVector S K, w (exponentVectorNat S K e) := by
          refine Finset.sum_congr rfl ?_
          intro e _he
          exact (completely_multiplicative_exponentVectorNat w hw S K e).symm
    _ = ∑ n ∈ boundedSmoothNumbers S K, w n := by
          unfold boundedSmoothNumbers
          have hinj :
              Set.InjOn
                (fun e : ExponentVector S K => exponentVectorNat S K e)
                (↑(Finset.univ : Finset (ExponentVector S K))) := by
            intro a _ha b _hb h
            exact exponentVectorNat_injective_of_prime_set S K hSprime h
          exact
            (Finset.sum_image
              (s := (Finset.univ : Finset (ExponentVector S K)))
              (g := fun e => exponentVectorNat S K e)
              (f := w) hinj).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2734ba1986cbd59a76bb98ae6c65d368dd6da64e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

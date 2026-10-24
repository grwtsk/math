# Estimator.fstInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4026c86c67ef1fde2ecaaf9f1e4dfd8bcef244c543aa33762b0045e4ff1d762",
  "kind": "def",
  "lexical_name": "Estimator.fstInst",
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
  "slug": "estimator-fstinst--0046d9bb9ce84446516eff73",
  "source": {
    "blob": "39537f4cd1a8d7d7126101c72d060adcf347506e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0046d9bb9ce84446516eff73d6d1e0aa14d42bade4a22a37131b072d91a9ea82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4026c86c67ef1fde2ecaaf9f1e4dfd8bcef244c543aa33762b0045e4ff1d762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Estimator.fstInst [DecidableLT α] [∀ (p : α × β), WellFoundedGT { q // q ≤ p }]
    (a : Thunk α) (b : Thunk β) (i : Estimator (a.prod b) ε) :
    Estimator a (Estimator.fst (a.prod b) ε) where
  bound_le e := (Estimator.bound_le e.inner : bound (a.prod b) e.inner ≤ (a.get, b.get)).1
  improve_spec e := by
    let bd := (bound (a.prod b) e.inner).1
    have := Estimator.improveUntil_spec (a.prod b) (fun p => bd < p.1) e.inner
    revert this
    simp only [EstimatorData.improve, decide_eq_true_eq]
    match Estimator.improveUntil (a.prod b) _ _ with
    | .error _ =>
      simp only [Option.map_none]
      exact fun w =>
        eq_of_le_of_not_lt
          (Estimator.bound_le e.inner : bound (a.prod b) e.inner ≤ (a.get, b.get)).1 w
    | .ok e' => exact fun w => w

end fst
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39537f4cd1a8d7d7126101c72d060adcf347506e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

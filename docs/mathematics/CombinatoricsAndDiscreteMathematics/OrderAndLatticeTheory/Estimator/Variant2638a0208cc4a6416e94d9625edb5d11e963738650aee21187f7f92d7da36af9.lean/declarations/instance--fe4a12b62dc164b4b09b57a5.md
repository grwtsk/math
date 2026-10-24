# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19b145039a302c5b324f21739b8eece5b4bf080e3c88b889610cbd238d2ecf7f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fe4a12b62dc164b4b09b57a5",
  "source": {
    "blob": "39537f4cd1a8d7d7126101c72d060adcf347506e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe4a12b62dc164b4b09b57a58257ff8bf136320f660f10980e23d1aa3b7134a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19b145039a302c5b324f21739b8eece5b4bf080e3c88b889610cbd238d2ecf7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DecidableLT α] {a : Thunk α} {b : Thunk β}
    (ε : Type*) [Estimator (a.prod b) ε] [∀ (p : α × β), WellFoundedGT { q // q ≤ p }] :
    EstimatorData a (Estimator.fst (a.prod b) ε) where
  bound e := (bound (a.prod b) e.inner).1
  improve e :=
    let bd := (bound (a.prod b) e.inner).1
    Estimator.improveUntil (a.prod b) (fun p => bd < p.1) e.inner
      |>.toOption |>.map Estimator.fst.mk

/-- Given an estimator for a pair, we can extract an estimator for the first factor. -/
-- This isn't an instance as at the sole use case we need to provide
-- the instance arguments by hand anyway.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39537f4cd1a8d7d7126101c72d060adcf347506e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eea07ac967efca2b47010f523ce2b2406939e6648260204fab6389e241f25af",
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
  "slug": "instance--a5b2658f885354cdf9ae663c",
  "source": {
    "blob": "6b7230f7d82214d34fa380649682fb37b90d1c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5b2658f885354cdf9ae663ce1733001a322dc2782abe5ade381e0af80554ed2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eea07ac967efca2b47010f523ce2b2406939e6648260204fab6389e241f25af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {m σ ρ} [Monad m] [LawfulMonad m] [MonadStateOf σ m] [LawfulMonadStateOf σ m] :
    LawfulMonadStateOf σ (ReaderT ρ m) where
  modifyGet_eq f := ReaderT.ext fun ctx => by
    simp [← liftM_modifyGet, LawfulMonadStateOf.modifyGet_eq, ← liftM_get]
  get_bind_const mx := ReaderT.ext fun ctx => by
    simp [← liftM_get]
  get_bind_get_bind mx := ReaderT.ext fun ctx => by
    simp [← liftM_get]
  get_bind_set_bind mx := ReaderT.ext fun ctx => by
    simp [← liftM_get, ← liftM_set]
  set_bind_get s := ReaderT.ext fun ctx => by
    simp [← liftM_get, ← liftM_set]
  set_bind_set s s' := ReaderT.ext fun ctx => by
    simp [← liftM_set]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7230f7d82214d34fa380649682fb37b90d1c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

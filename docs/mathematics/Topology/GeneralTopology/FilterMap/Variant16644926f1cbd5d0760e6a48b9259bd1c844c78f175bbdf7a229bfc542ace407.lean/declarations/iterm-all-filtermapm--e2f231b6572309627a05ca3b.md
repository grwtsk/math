# IterM.all_filterMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e30805b-60fe-d6e1-7c94-c18105cae84d",
  "kind": "theorem",
  "lexical_name": "IterM.all_filterMapM",
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
  "slug": "iterm-all-filtermapm--e2f231b6572309627a05ca3b",
  "source": {
    "blob": "2d9f20680a123ddbd21d6deb3e478fa83d8e6191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1943,
    "line": 1933,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2f231b6572309627a05ca3bc3325acdd2604ef33d020345f76e42b91a2c53f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e30805b-60fe-d6e1-7c94-c18105cae84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1933–1943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.all_filterMapM {α β β' : Type w} {m : Type w → Type w'} {n : Type w → Type w''}
    [Iterator α m β] [Finite α m] [MonadLiftT m n] [IteratorLoop α m m]
    [Monad m] [LawfulMonad m] [Monad n] [MonadAttach n] [LawfulMonad n] [WeaklyLawfulMonadAttach n]
    [LawfulMonadLiftT m n] [LawfulIteratorLoop α m m]
    {it : IterM (α := α) m β} {f : β → n (Option β')} {p : β' → Bool} :
    (it.filterMapM f).all p = (it.mapM (pure (f := n))).allM (fun x => do
      match ← f x with
      | some fx => return .up (p fx)
      | none => return .up true) := by
  simp [all_eq_allM, allM_filterMapM]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean#L1933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9f20680a123ddbd21d6deb3e478fa83d8e6191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

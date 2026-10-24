# Spec.IterM.foldM_mapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6b9c613-dcc5-43a3-d7df-4beafc22f1f4",
  "kind": "theorem",
  "lexical_name": "Spec.IterM.foldM_mapWithPostcondition",
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
  "slug": "spec-iterm-foldm-mapwithpostcondition--6fcbd769ad389a21a1d1e075",
  "source": {
    "blob": "4610651c0bd9fbc022aa7a0fd6447ac97c1b647e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1622,
    "line": 1605,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fcbd769ad389a21a1d1e0759a1fccada536b9b08819e935675d08e05b663933",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6b9c613-dcc5-43a3-d7df-4beafc22f1f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1605–1622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.IterM.foldM_mapWithPostcondition {α β γ δ : Type w}
    {m : Type w → Type w'} {n : Type w → Type w''} {o : Type w → Type w'''}
    {Pred : Type w} {EPred : Type w}
    [Iterator α m β] [Finite α m]
    [Monad m] [Monad n] [Monad o] [LawfulMonad m] [LawfulMonad n] [Assertion Pred] [Assertion EPred] [WPMonad o Pred EPred]
    [IteratorLoop α m n] [IteratorLoop α m o]
    [LawfulIteratorLoop α m n] [LawfulIteratorLoop α m o]
    [MonadLiftT m n] [MonadLiftT n o] [LawfulMonadLiftT m n] [LawfulMonadLiftT n o]
    {f : β → PostconditionT n γ} {g : δ → γ → o δ} {init : δ} {it : IterM (α := α) m β}
    {P : Pred} {Q : δ → Pred} {eQ : EPred}
    (h :
        haveI : MonadLift n o := ⟨MonadLiftT.monadLift⟩
        Triple (it.foldM (n := o) (init := init) (fun d b => do let c ← (f b).run; g d c)) P Q eQ) :
    Triple ((it.mapWithPostcondition f).foldM (init := init) g) P Q eQ := by
  rwa [Std.IterM.foldM_mapWithPostcondition]


@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean#L1605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4610651c0bd9fbc022aa7a0fd6447ac97c1b647e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

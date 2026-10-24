# Iter.foldM_filterMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f229760-8bf6-958c-8e9e-af00846b0479",
  "kind": "theorem",
  "lexical_name": "Iter.foldM_filterMapM",
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
  "slug": "iter-foldm-filtermapm--9ceb81281556ebd223c89ab4",
  "source": {
    "blob": "565e710ecdc3dcba2201dacdecda4b4cf2273efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1840,
    "line": 1825,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ceb81281556ebd223c89ab4aef4c19ba711a0ca98c0437f53922db25b423784",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f229760-8bf6-958c-8e9e-af00846b0479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1825–1840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.foldM_filterMapM {α β γ δ : Type w}
    {n : Type w → Type w''} {o : Type w → Type w'''}
    [Iterator α Id β] [Finite α Id]
    [Monad n] [MonadAttach n] [LawfulMonad n] [WeaklyLawfulMonadAttach n]
    [Monad o] [LawfulMonad o] [WPMonad o ps]
    [IteratorLoop α Id n] [IteratorLoop α Id o]
    [LawfulIteratorLoop α Id n] [LawfulIteratorLoop α Id o]
    [MonadLiftT n o] [LawfulMonadLiftT n o]
    {f : β → n (Option γ)} {g : δ → γ → o δ} {init : δ} {it : Iter (α := α) β} {P Q}
    (h : Triple (it.foldM (m := o) (init := init) (fun d b => do
          let some c ← f b | Pure.pure d
          g d c)) P Q) :
    Triple ((it.filterMapM f).foldM (init := init) g) P Q := by
  rwa [Std.Iter.foldM_filterMapM]

@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean#L1825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565e710ecdc3dcba2201dacdecda4b4cf2273efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

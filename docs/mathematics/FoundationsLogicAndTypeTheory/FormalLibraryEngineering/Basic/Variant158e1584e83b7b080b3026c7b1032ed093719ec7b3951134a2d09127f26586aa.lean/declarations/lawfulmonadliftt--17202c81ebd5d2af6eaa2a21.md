# LawfulMonadLiftT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e72f1872fe3433c9e95a0b85fac55e67ad4f44661cf0b7799183985f8fd2b1ec",
  "kind": "class",
  "lexical_name": "LawfulMonadLiftT",
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
  "slug": "lawfulmonadliftt--17202c81ebd5d2af6eaa2a21",
  "source": {
    "blob": "5059c2debb8446a09ff5a09bcc71c51eb21703c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant158e1584e83b7b080b3026c7b1032ed093719ec7b3951134a2d09127f26586aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17202c81ebd5d2af6eaa2a21bf67b24aacf87681e3c8f5b71542428772a34624",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant158e1584e83b7b080b3026c7b1032ed093719ec7b3951134a2d09127f26586aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e72f1872fe3433c9e95a0b85fac55e67ad4f44661cf0b7799183985f8fd2b1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulMonadLiftT (m : Type u → Type v) (n : Type u → Type w) [Monad m] [Monad n]
    [inst : MonadLiftT m n] : Prop where
  /-- Lifting preserves `pure` -/
  monadLift_pure {α : Type u} (a : α) : inst.monadLift (pure a) = pure a
  /-- Lifting preserves `bind` -/
  monadLift_bind {α β : Type u} (ma : m α) (f : α → m β) :
    inst.monadLift (ma >>= f) = monadLift ma >>= (fun x => monadLift (f x))

export LawfulMonadLiftT (monadLift_pure monadLift_bind)

end MonadLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant158e1584e83b7b080b3026c7b1032ed093719ec7b3951134a2d09127f26586aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant158e1584e83b7b080b3026c7b1032ed093719ec7b3951134a2d09127f26586aa.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5059c2debb8446a09ff5a09bcc71c51eb21703c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

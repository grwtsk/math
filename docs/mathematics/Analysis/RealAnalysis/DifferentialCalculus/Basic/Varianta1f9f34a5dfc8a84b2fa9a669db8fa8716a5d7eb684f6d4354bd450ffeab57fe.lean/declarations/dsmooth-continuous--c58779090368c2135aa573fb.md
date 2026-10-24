# DSmooth.continuous'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae5cb552-a8af-51f3-0164-533499ee9eb3",
  "kind": "theorem",
  "lexical_name": "DSmooth.continuous'",
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
  "slug": "dsmooth-continuous--c58779090368c2135aa573fb",
  "source": {
    "blob": "ba74d8bddcc80b3393f1db17bd4bb92781dfb32e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 365,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c58779090368c2135aa573fbf11e24b498f1a47dc4cd0fcc77e778d1740b27dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae5cb552-a8af-51f3-0164-533499ee9eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem DSmooth.continuous' {X Y : Type*}
    [TopologicalSpace X] [DiffeologicalSpace X] [IsDTopologyCompatible X]
    [TopologicalSpace Y] [DiffeologicalSpace Y] [IsDTopologyCompatible Y]
    {f : X → Y} (hf : DSmooth f) : Continuous f := by
  convert! hf.continuous
  · rw [IsDTopologyCompatible.dTop_eq X]
  · rw [IsDTopologyCompatible.dTop_eq Y]

/-- Technical condition saying that the diffeology on a space is the one coming from
smoothness in the sense of `ContDiff ℝ ∞`. Necessary as a hypothesis for some theorems
because some normed spaces carry a diffeology that is equal but not defeq to the normed space
diffeology (for example the product diffeology in the case of `Fin n → ℝ`), so the information
that these theorems still holds needs to be made available via this typeclass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba74d8bddcc80b3393f1db17bd4bb92781dfb32e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

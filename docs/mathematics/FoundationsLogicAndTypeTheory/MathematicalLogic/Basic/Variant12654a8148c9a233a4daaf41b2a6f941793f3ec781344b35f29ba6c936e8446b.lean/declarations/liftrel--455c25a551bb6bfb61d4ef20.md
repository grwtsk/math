# LiftRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b651866b787db0a12e3160619820ca9659fa2f41d8ebb9846deb11ad3a19120",
  "kind": "inductive",
  "lexical_name": "LiftRel",
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
  "slug": "liftrel--455c25a551bb6bfb61d4ef20",
  "source": {
    "blob": "58694c9e012b9d0b1c52886ed110ab544f1c45de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12654a8148c9a233a4daaf41b2a6f941793f3ec781344b35f29ba6c936e8446b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455c25a551bb6bfb61d4ef20c4250aa2825857e28d5b3d200c2305aae425f973",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12654a8148c9a233a4daaf41b2a6f941793f3ec781344b35f29ba6c936e8446b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b651866b787db0a12e3160619820ca9659fa2f41d8ebb9846deb11ad3a19120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive LiftRel (r : α → γ → Prop) (s : β → δ → Prop) : Sum α β → Sum γ δ → Prop
  | protected inl {a c} : r a c → LiftRel r s (inl a) (inl c)
  | protected inr {b d} : s b d → LiftRel r s (inr b) (inr d)
#align sum.lift_rel Sum.LiftRel

variable {r r₁ r₂ : α → γ → Prop} {s s₁ s₂ : β → δ → Prop} {a : α} {b : β} {c : γ} {d : δ}
  {x : Sum α β} {y : Sum γ δ}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12654a8148c9a233a4daaf41b2a6f941793f3ec781344b35f29ba6c936e8446b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12654a8148c9a233a4daaf41b2a6f941793f3ec781344b35f29ba6c936e8446b.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58694c9e012b9d0b1c52886ed110ab544f1c45de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# liftRel_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28f6e1fe-3f00-2a21-a0b6-6984108be4ec",
  "kind": "theorem",
  "lexical_name": "liftRel_bind",
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
  "slug": "liftrel-bind--ea2f0f5c323d6b455fc4c83a",
  "source": {
    "blob": "f3090b10a49d03b4cc4569cbe1374c466ccfaab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1185,
    "line": 1167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea2f0f5c323d6b455fc4c83afa3ea722c8fda875580548b52137361e1433ba86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28f6e1fe-3f00-2a21-a0b6-6984108be4ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1167–1185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_bind {δ} (R : α → β → Prop) (S : γ → δ → Prop) {s1 : Computation α}
    {s2 : Computation β} {f1 : α → Computation γ} {f2 : β → Computation δ} (h1 : LiftRel R s1 s2)
    (h2 : ∀ {a b}, R a b → LiftRel S (f1 a) (f2 b)) : LiftRel S (bind s1 f1) (bind s2 f2) :=
  let ⟨l1, r1⟩ := h1
  ⟨fun {_} cB =>
    let ⟨_, a1, c₁⟩ := exists_of_mem_bind cB
    let ⟨_, b2, ab⟩ := l1 a1
    let ⟨l2, _⟩ := h2 ab
    let ⟨_, d2, cd⟩ := l2 c₁
    ⟨_, mem_bind b2 d2, cd⟩,
    fun {_} dB =>
    let ⟨_, b1, d1⟩ := exists_of_mem_bind dB
    let ⟨_, a2, ab⟩ := r1 b1
    let ⟨_, r2⟩ := h2 ab
    let ⟨_, c₂, cd⟩ := r2 d1
    ⟨_, mem_bind a2 c₂, cd⟩⟩
#align computation.lift_rel_bind Computation.liftRel_bind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean#L1167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3090b10a49d03b4cc4569cbe1374c466ccfaab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

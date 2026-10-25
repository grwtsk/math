# throw_lift_ExceptT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abf67b5d-8694-9b72-530c-e6d046ee1b72",
  "kind": "theorem",
  "lexical_name": "throw_lift_ExceptT",
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
  "slug": "throw-lift-exceptt--ee1844b3d31f17081f28a9a2",
  "source": {
    "blob": "c5d092fd5ae70a181c6af0cb256a09e5e5c7eb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 474,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee1844b3d31f17081f28a9a28ccc850e6c2be355217b4409fffe906914fb61b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abf67b5d-8694-9b72-530c-e6d046ee1b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem throw_lift_ExceptT [WP m sh] [Monad m] [MonadExceptOf ε m] :
    wp⟦MonadExceptOf.throw (ε:=ε) e : ExceptT ε' m α⟧ Q = wp⟦MonadExceptOf.throw (ε:=ε) e : m (Except ε' α)⟧ (fun e => e.casesOn Q.2.1 Q.1, Q.2.2) := by
  simp only [wp, MonadExceptOf.throw, PredTrans.apply_pushExcept]
  congr
  ext x
  split <;> rfl

-- The following lemma is structurally different to StateT and others because of weird definitions
-- for lifting throw
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d092fd5ae70a181c6af0cb256a09e5e5c7eb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

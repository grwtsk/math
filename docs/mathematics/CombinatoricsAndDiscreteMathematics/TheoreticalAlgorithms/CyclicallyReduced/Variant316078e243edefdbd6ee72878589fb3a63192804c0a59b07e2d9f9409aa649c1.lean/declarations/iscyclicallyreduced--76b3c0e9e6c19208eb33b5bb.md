# isCyclicallyReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:651deed9-955e-2678-2fb0-3636c1b88bcb",
  "kind": "theorem",
  "lexical_name": "isCyclicallyReduced",
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
  "slug": "iscyclicallyreduced--76b3c0e9e6c19208eb33b5bb",
  "source": {
    "blob": "cf7526ddb011658e8955ed07e87706f8bf3db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b3c0e9e6c19208eb33b5bbfaeb1ac2539aeb522ff3ae2967576213795a1545",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:651deed9-955e-2678-2fb0-3636c1b88bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCyclicallyReduced (h : IsReduced L) : IsCyclicallyReduced (reduceCyclically L) := by
  induction L using List.bidirectionalRec
  case nil => simp
  case singleton => simp
  case cons_append a l b ih =>
    rw [reduceCyclically.cons_append]
    split
    case isTrue => exact ih (h.infix ⟨[a], [b], rfl⟩)
    case isFalse h' =>
      rw [isCyclicallyReduced_cons_append_iff]
      exact ⟨h, by simpa using h'⟩

/-- Partner function to `reduceCyclically`.
See `reduceCyclically.conj_conjugator_reduceCyclically`. -/
@[to_additive /-- Partner function to `reduceCyclically`.
See `reduceCyclically.conj_conjugator_reduceCyclically`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7526ddb011658e8955ed07e87706f8bf3db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# optionPelim'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d10bd114d943352ea4cc9c14d2646cf522c8a82e0651b10997eefed489660c7",
  "kind": "def",
  "lexical_name": "optionPelim'",
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
  "slug": "optionpelim--f852b679743d171e5f67c4db",
  "source": {
    "blob": "ae68d6dd2cae548b2e206426cc02fa7947c9c3e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f852b679743d171e5f67c4dbbb378cada3836020b25e42f0ecc95007b80b29c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d10bd114d943352ea4cc9c14d2646cf522c8a82e0651b10997eefed489660c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def optionPelim' {α : Type u_1} (t : Option α) {β :  Sort u_2}
    (n : t = none → β) (s : (val : α) → t = some val → β) : β :=
  match t with
  | some a => s a rfl
  | none => n rfl

/--
Inserts an `Option` case distinction after the first computation of a call to `MonadAttach.pbind`.
This lemma is useful for simplifying the second computation, which often involves `match` expressions
that use `pbind`'s proof term.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae68d6dd2cae548b2e206426cc02fa7947c9c3e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

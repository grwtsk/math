# Certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a760b1ccfb802dcc452e29ffcb0f1c1d5c549289c23cad812187cf1c412e67d4",
  "kind": "structure",
  "lexical_name": "Certificate",
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
  "slug": "certificate--b604dfc8dde530b2d9466f51",
  "source": {
    "blob": "e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b604dfc8dde530b2d9466f51ca4f1ea7a46396da83c9cff8d7c46bac3a9663dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a760b1ccfb802dcc452e29ffcb0f1c1d5c549289c23cad812187cf1c412e67d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Certificate (n m : ℕ) where
  /-- The exact incoming-row graph data. -/
  adjacency : Matrix (Fin n) (Fin n) ℤ
  /-- The proposed unquotiented populations. -/
  states : Fin m → Population n
  /-- The listed index of each standard basis seed. -/
  seeds : Fin n → Fin m
  /-- The listed index after every generator at every state. -/
  transition : Fin m → Fin n → Fin m
  /-- A seed for the independently replayed word of each state. -/
  origin : Fin m → Fin n
  /-- Finite words executed from left to right. -/
  words : Fin m → List (Fin n)

/-- The complete decidable obligations, without assuming orbit completeness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

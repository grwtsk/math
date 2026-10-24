# φ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16d28ad77c8c5f85ec6a582c79a2f7e0869f4fcecef9bdb8e72a60fde37d0419",
  "kind": "def",
  "lexical_name": "φ",
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
  "slug": "anonymous--752fce86c9f6b56575bf35cc",
  "source": {
    "blob": "98489e952eee336e2a7064a4625d3dd5e9dcd21d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant6e19f7e3afdc23431c386d52371b4fca9c04accf8196a75983604a7d9ecdae5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:752fce86c9f6b56575bf35cc55763d3fa9cbfaef0c8c8d0505052ac66a09b327",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant6e19f7e3afdc23431c386d52371b4fca9c04accf8196a75983604a7d9ecdae5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16d28ad77c8c5f85ec6a582c79a2f7e0869f4fcecef9bdb8e72a60fde37d0419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def φ {Z : C} (f : MorphComponents X n Z) : X _⦋n + 1⦌ ⟶ Z :=
  PInfty.f (n + 1) ≫ f.a + ∑ i : Fin (n + 1), (P i).f (n + 1) ≫ X.δ i.rev.succ ≫
    f.b (Fin.rev i)

variable (X n)

/-- the canonical `MorphComponents` whose associated morphism is the identity
(see `F_id`) thanks to `decomposition_Q n (n+1)` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant6e19f7e3afdc23431c386d52371b4fca9c04accf8196a75983604a7d9ecdae5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant6e19f7e3afdc23431c386d52371b4fca9c04accf8196a75983604a7d9ecdae5c.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98489e952eee336e2a7064a4625d3dd5e9dcd21d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isoPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edd2de370f82270064feb8bf061a64c8abc6dacc5575b76d42ac8d1b8e7f85fb",
  "kind": "def",
  "lexical_name": "isoPerm",
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
  "slug": "isoperm--6e9980c9b7ca8cd4aa4b5bfa",
  "source": {
    "blob": "6f62098c10d0ce0f1b72124dcc20fb37cc6679cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 557,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e9980c9b7ca8cd4aa4b5bfa99464a093882ba7a256b02ed77b793d984d7e42a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edd2de370f82270064feb8bf061a64c8abc6dacc5575b76d42ac8d1b8e7f85fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoPerm {α : Type u} : Grp.of (Aut α) ≅ Grp.of (Equiv.Perm α) where
  hom := Grp.ofHom
    { toFun := fun g => g.toEquiv
      map_one' := by aesop
      map_mul' := by aesop }
  inv := Grp.ofHom
    { toFun := fun g => g.toIso
      map_one' := by aesop
      map_mul' := by aesop }

/-- The (unbundled) group of automorphisms of a type is `MulEquiv` to the (unbundled) group
of permutations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f62098c10d0ce0f1b72124dcc20fb37cc6679cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

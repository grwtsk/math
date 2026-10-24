# mapOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b20c51aa1554b7e7182feca052e9d42675bb77335c4a6c9469ca474f3797408a",
  "kind": "def",
  "lexical_name": "mapOfSurjective",
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
  "slug": "mapofsurjective--c103d784bca150ebf9b9c969",
  "source": {
    "blob": "2a9db0d480f3d03f00b5d8d97d0c115fd22f0949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c103d784bca150ebf9b9c969018a7a919fdb74acc5ea61b6f66dfd360ff154c6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b20c51aa1554b7e7182feca052e9d42675bb77335c4a6c9469ca474f3797408a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapOfSurjective {c : Con M} (f : F) (h : ker f ≤ c) (hf : Surjective f) : Con N where
  __ := c.toSetoid.mapOfSurjective f h hf
  mul' h₁ h₂ := by
    rcases h₁ with ⟨a, b, h1, rfl, rfl⟩
    rcases h₂ with ⟨p, q, h2, rfl, rfl⟩
    exact ⟨a * p, b * q, c.mul h1 h2, map_mul f _ _, map_mul f _ _⟩

/-- A specialization of 'the smallest congruence relation containing a congruence relation `c`
equals `c`'. -/
@[to_additive "A specialization of 'the smallest additive congruence relation containing
an additive congruence relation `c` equals `c`'."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9db0d480f3d03f00b5d8d97d0c115fd22f0949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

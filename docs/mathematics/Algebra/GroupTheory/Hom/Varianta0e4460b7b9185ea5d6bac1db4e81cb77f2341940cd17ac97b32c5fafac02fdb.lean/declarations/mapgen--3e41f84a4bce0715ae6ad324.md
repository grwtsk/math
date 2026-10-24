# mapGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e78a5541dee1cf0d802520e9c1d92fc8bbf320a08762f879a99865e3024e4567",
  "kind": "def",
  "lexical_name": "mapGen",
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
  "slug": "mapgen--3e41f84a4bce0715ae6ad324",
  "source": {
    "blob": "2a9db0d480f3d03f00b5d8d97d0c115fd22f0949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e41f84a4bce0715ae6ad3249b18a1e6ca7894a81f582fc5195856816226aeb4",
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

Occurrence: `declaration:e78a5541dee1cf0d802520e9c1d92fc8bbf320a08762f879a99865e3024e4567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapGen {c : Con M} (f : M → N) : Con N :=
  conGen <| Relation.Map c f f

/-- Given a surjective multiplicative-preserving function `f` whose kernel is contained in a
congruence relation `c`, the congruence relation on `f`'s codomain defined by '`x ≈ y` iff the
elements of `f⁻¹(x)` are related to the elements of `f⁻¹(y)` by `c`.' -/
@[to_additive "Given a surjective addition-preserving function `f` whose kernel is contained in
an additive congruence relation `c`, the additive congruence relation on `f`'s codomain defined
by '`x ≈ y` iff the elements of `f⁻¹(x)` are related to the elements of `f⁻¹(y)` by `c`.'"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9db0d480f3d03f00b5d8d97d0c115fd22f0949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# _root_.GRWTSK.Algebra.GroupTheory.InvMemClass.Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.AddSubgroup.nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99f0f1e1aba43a728db723a2244b55ea6959c12584bf4f8d35151291437f9f40",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.InvMemClass.Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.AddSubgroup.nsmul",
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
  "slug": "root-grwtsk-algebra-grouptheory-invmemclass-variantced44d82ece51e747e1c9--96984d5bb4952d8bdd50a0a2",
  "source": {
    "blob": "c6c621dcda390ad437212eb1495cf32d24d3f0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 490,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96984d5bb4952d8bdd50a0a28fc653272a439700a045c06d8fe2dfbe2fdf2b09",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99f0f1e1aba43a728db723a2244b55ea6959c12584bf4f8d35151291437f9f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.GroupTheory.InvMemClass.Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.AddSubgroup.nsmul {G} [AddGroup G] {H : AddSubgroup G} : SMul ℕ H :=
  ⟨fun n a => ⟨n • a, H.nsmul_mem a.2 n⟩⟩

/-- A subgroup of a group inherits a natural power -/
@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c621dcda390ad437212eb1495cf32d24d3f0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

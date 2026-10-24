# CompHaus.forget_reflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:626e72008137ba32c9aa27ec47b5bdc288e953a4d88427c2070469a7a55a58fb",
  "kind": "instance",
  "lexical_name": "CompHaus.forget_reflectsIsomorphisms",
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
  "slug": "comphaus-forget-reflectsisomorphisms--025d9fe26136e274f1192ff6",
  "source": {
    "blob": "189c61173f1eee60ef5d4e4d945dddd68fe7137c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 209,
    "path": "GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:025d9fe26136e274f1192ff6c98738f6db465391481f52de5d0624424f0ad87d",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:626e72008137ba32c9aa27ec47b5bdc288e953a4d88427c2070469a7a55a58fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CompHaus.forget_reflectsIsomorphisms : ReflectsIsomorphisms (forget CompHaus.{u}) :=
  ⟨by intro A B f hf; exact CompHaus.isIso_of_bijective _ ((isIso_iff_bijective f).mp hf)⟩
set_option linter.uppercaseLean3 false in
#align CompHaus.forget_reflects_isomorphisms CompHaus.forget_reflectsIsomorphisms

/-- (Implementation) The object part of the compactification functor from topological spaces to
compact Hausdorff spaces.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189c61173f1eee60ef5d4e4d945dddd68fe7137c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

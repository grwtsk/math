# monoidalPredicate_module_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebeed0a70be562ec048dee24a58bbdb11002addca9efbc733381fc61ce2f2a20",
  "kind": "instance",
  "lexical_name": "monoidalPredicate_module_finite",
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
  "slug": "monoidalpredicate-module-finite--bdac8b0f357b841ff218ecd8",
  "source": {
    "blob": "a88d302649f8f865e52a456b5b9b7d1ebd6ce02f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdac8b0f357b841ff218ecd86bbab1e2905ab29b1e657b89a4529096f223ccef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebeed0a70be562ec048dee24a58bbdb11002addca9efbc733381fc61ce2f2a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalPredicate_module_finite :
    MonoidalCategory.MonoidalPredicate fun V : ModuleCat.{u} R => Module.Finite R V where
  prop_id := Module.Finite.self R
  prop_tensor := @fun X Y _ _ => Module.Finite.tensorProduct R X Y
#align fgModule.monoidal_predicate_module_finite FGModuleCat.monoidalPredicate_module_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88d302649f8f865e52a456b5b9b7d1ebd6ce02f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

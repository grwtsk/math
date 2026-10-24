# associator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fe303bc8d83f4ed8dff7888bb4b6c9db518530d8f65470999257a04fc56a815",
  "kind": "def",
  "lexical_name": "associator",
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
  "slug": "associator--a10fbac4cd334e0146904d93",
  "source": {
    "blob": "b59e3434f11978cd74b6cabee0b3b5b837825764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a10fbac4cd334e0146904d93384189b784c1b7846c76bd8dec4bbf7acf8ecacf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fe303bc8d83f4ed8dff7888bb4b6c9db518530d8f65470999257a04fc56a815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associator (M : ModuleCat.{v} R) (N : ModuleCat.{w} R) (K : ModuleCat.{x} R) :
    tensorObj (tensorObj M N) K ≅ tensorObj M (tensorObj N K) :=
  (TensorProduct.assoc R M N K).toModuleIso
#align Module.monoidal_category.associator ModuleCat.MonoidalCategory.associator

section

/-! The `associator_naturality` and `pentagon` lemmas below are very slow to elaborate.

We give them some help by expressing the lemmas first non-categorically, then using
`convert _aux using 1` to have the elaborator work as little as possible. -/


open TensorProduct (assoc map)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59e3434f11978cd74b6cabee0b3b5b837825764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# compatibleTypesQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d106ab0283eb01643b7f4b8d1376662f1df999343e1df93d4df3c17c39f63533",
  "kind": "def",
  "lexical_name": "compatibleTypesQuick",
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
  "slug": "compatibletypesquick--cfca29aa3634dd67d4b15142",
  "source": {
    "blob": "eea54d6e1184a281b82fc6155d119aa2a4cbeedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variant516f4ab9a53e5d6f3f7c139ca300115a8bad2f78b953851d293adeee095a87ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfca29aa3634dd67d4b15142220bbfddbc214c22a77c45f37a7235d3dce1dddb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variant516f4ab9a53e5d6f3f7c139ca300115a8bad2f78b953851d293adeee095a87ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d106ab0283eb01643b7f4b8d1376662f1df999343e1df93d4df3c17c39f63533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compatibleTypesQuick (a b : Expr) : Bool :=
  if a.isErased || b.isErased then
    true
  else
    let a' := a.headBeta
    let b' := b.headBeta
    if a != a' || b != b' then
      compatibleTypesQuick a' b'
    else if a == b then
      true
    else
      match a, b with
      -- Note that even after reducing to head-beta, we can still have `.app` terms. For example,
      -- an inductive constructor application such as `List Int`
      | .app f a, .app g b => compatibleTypesQuick f g && compatibleTypesQuick a b
      | .forallE _ d₁ b₁ _, .forallE _ d₂ b₂ _ => compatibleTypesQuick d₁ d₂ && compatibleTypesQuick b₁ b₂
      | .lam _ d₁ b₁ _, .lam _ d₂ b₂ _ => compatibleTypesQuick d₁ d₂ && compatibleTypesQuick b₁ b₂
      | .sort u, .sort v => Level.isEquiv u v
      | .const n us, .const m vs => n == m && List.isEqv us vs Level.isEquiv
      | _, _ => false

namespace InferType
namespace Pure

/--
Complete check for `compatibleTypes`. It eta-expands type formers. See comment at `compatibleTypes`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variant516f4ab9a53e5d6f3f7c139ca300115a8bad2f78b953851d293adeee095a87ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variant516f4ab9a53e5d6f3f7c139ca300115a8bad2f78b953851d293adeee095a87ed.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea54d6e1184a281b82fc6155d119aa2a4cbeedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

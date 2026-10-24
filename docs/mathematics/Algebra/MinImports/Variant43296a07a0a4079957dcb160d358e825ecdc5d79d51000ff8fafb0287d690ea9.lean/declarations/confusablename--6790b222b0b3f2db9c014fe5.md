# confusableName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7867b51f317e2cf65f693cc73aa08d85d278e1c7c387137174a8e590d823c1cc",
  "kind": "def",
  "lexical_name": "confusableName",
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
  "slug": "confusablename--6790b222b0b3f2db9c014fe5",
  "source": {
    "blob": "5c45e8d193cc103cda79cb23eae812b8e92a8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6790b222b0b3f2db9c014fe5d1ba56eab413fb608afb774dc8d0e845558f66de",
  "verification": {
    "reference": "docs/verification/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7867b51f317e2cf65f693cc73aa08d85d278e1c7c387137174a8e590d823c1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def confusableName : (1 : ℕ) = 1 := rfl

variable {R : Type*} [Semiring R]

-- Don't get confused by unused variables.
variable {K : Type*} [Field K]

namespace Namespace

-- The dependency on `Semiring` is only found in the `variable` declaration.
-- We find it by looking up the declaration by name and checking the term,
-- which used to get confused if running in a namespace.

/-- info: import Mathlib.Algebra.Ring.Defs -/
#guard_msgs in
#min_imports in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c45e8d193cc103cda79cb23eae812b8e92a8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

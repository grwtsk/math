# compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bec226be4f6b22ff6052d53ccfcd9529a61b48c3f81ec62d2a01a31df980308",
  "kind": "def",
  "lexical_name": "compare",
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
  "slug": "compare--79c682ec5f7f2c1baa4e8362",
  "source": {
    "blob": "c6e194efed120883b795fa06da9b99e95db0674e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant06bdd63063094cb35cf6e377031116bbf57bf459af05dc2c7280a23c483c3627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79c682ec5f7f2c1baa4e8362a643305e5400f6f2c46a41d8458136dcec4a5111",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant06bdd63063094cb35cf6e377031116bbf57bf459af05dc2c7280a23c483c3627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bec226be4f6b22ff6052d53ccfcd9529a61b48c3f81ec62d2a01a31df980308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def compare : UnpackedFloat → UnpackedFloat → Option Ordering
  | .notANumber, _ => none
  | _, .notANumber => none
  | .infinity s₁, .infinity s₂ => some (compare s₁ s₂)
  | .infinity .positive, _ => some .gt
  | .infinity .negative, _ => some .lt
  | _, .infinity .positive => some .lt
  | _, .infinity .negative => some .gt
  | .finite .positive .., .zero _ => some .gt
  | .finite .negative .., .zero _ => some .lt
  | .zero _, .finite .positive .. => some .lt
  | .zero _, .finite .negative .. => some .gt
  | .zero _, .zero _ => some .eq
  | .finite .negative m₁ e₁ _, .finite .negative m₂ e₂ _ =>
    some ((compare e₁ e₂).then (compare m₁ m₂)).swap
  | .finite .negative .., .finite .positive .. => some .lt
  | .finite .positive .., .finite .negative .. => some .gt
  | .finite .positive m₁ e₁ _, .finite .positive m₂ e₂ _ =>
    some ((compare e₁ e₂).then (compare m₁ m₂))

/--
Determines whether `a` is less than or equal to `b` according to IEEE rules.

This is not a total ordering, and `≤` is not reflexive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant06bdd63063094cb35cf6e377031116bbf57bf459af05dc2c7280a23c483c3627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant06bdd63063094cb35cf6e377031116bbf57bf459af05dc2c7280a23c483c3627.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e194efed120883b795fa06da9b99e95db0674e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

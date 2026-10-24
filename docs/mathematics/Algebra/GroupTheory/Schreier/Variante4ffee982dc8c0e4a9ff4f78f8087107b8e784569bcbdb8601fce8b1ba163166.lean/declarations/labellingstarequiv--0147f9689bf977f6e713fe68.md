# labellingStarEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:474d1d4ef87a5a5f416d6f41b1f679989eb0a9affc1d69910a50be48ebbb795c",
  "kind": "def",
  "lexical_name": "labellingStarEquiv",
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
  "slug": "labellingstarequiv--0147f9689bf977f6e713fe68",
  "source": {
    "blob": "6c3518150cab379b6fbb98ec7d8eb6a050d740a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 133,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0147f9689bf977f6e713fe68e72fe77968bfce9dd3e99353f762163df66d769d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:474d1d4ef87a5a5f416d6f41b1f679989eb0a9affc1d69910a50be48ebbb795c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def labellingStarEquiv (x : SchreierGraph V ι) :
    Quiver.Star x ≃ Quiver.Star (SingleObj.star S) where
  toFun := (labelling V ι).star x
  invFun := fun ⟨_, s⟩ => ⟨ι s • x, s, rfl⟩
  left_inv := fun ⟨_, _, rfl⟩ => rfl
  right_inv := fun ⟨_, _⟩ => rfl

/-- The costar map of the labelling prefunctor as an equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variante4ffee982dc8c0e4a9ff4f78f8087107b8e784569bcbdb8601fce8b1ba163166.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3518150cab379b6fbb98ec7d8eb6a050d740a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

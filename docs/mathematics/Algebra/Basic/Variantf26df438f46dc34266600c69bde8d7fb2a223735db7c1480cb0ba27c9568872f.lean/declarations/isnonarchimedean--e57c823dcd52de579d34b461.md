# IsNonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5894a9020dbe2aff11b806c9caa07c48157a9b71c9c12f6b62eda332a01c3e54",
  "kind": "def",
  "lexical_name": "IsNonarchimedean",
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
  "slug": "isnonarchimedean--e57c823dcd52de579d34b461",
  "source": {
    "blob": "2795c96eaa3b6a7649c26153e51ed86cd5f662bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 101,
    "path": "GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e57c823dcd52de579d34b461210da5c233a822612e03d223aa21de39574679b3",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5894a9020dbe2aff11b806c9caa07c48157a9b71c9c12f6b62eda332a01c3e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsNonarchimedean {α : Type*} [Add α] (f : α → R) : Prop := ∀ a b : α, f (a + b) ≤ f a ⊔ f b

/-!
### Lemmas for canonically linear ordered semirings or linear ordered rings

The slightly unusual typeclass assumptions `[IsStrictOrderedRing R] [ExistsAddOfLE R]` cover two
more familiar settings:
* linearly ordered rings, e.g. `ℤ`, `ℚ` or `ℝ`
* canonically ordered semirings, e.g. `ℕ`, `ℚ≥0` or `ℝ≥0`
-/

variable [ExistsAddOfLE R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2795c96eaa3b6a7649c26153e51ed86cd5f662bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

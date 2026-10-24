# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbb150c2ffd0c1bf12ce403c2f7681025f6a312744eda59970b82526c231ba61",
  "kind": "class",
  "lexical_name": "State",
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
  "slug": "state--02b89bbd34f70a83d2ccb081",
  "source": {
    "blob": "be8117ddc370b11e4ce9b184473be447dda94df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02b89bbd34f70a83d2ccb081e9980c7e23919a62ef094239e099e5d42b68cfa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbb150c2ffd0c1bf12ce403c2f7681025f6a312744eda59970b82526c231ba61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class State (S : Type u) where
  /-- Upper bound on the number of possible turns remaining from this state -/
  turnBound : S → ℕ
  /-- States reachable by a Left move -/
  l : S → Finset S
  /-- States reachable by a Right move -/
  r : S → Finset S
  left_bound : ∀ {s t : S}, t ∈ l s → turnBound t < turnBound s
  right_bound : ∀ {s t : S}, t ∈ r s → turnBound t < turnBound s

open State

variable {S : Type u} [State S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variantdc1888be1c21284fefdd37f32e6ba97e8ada1b9d77f2929ac6d0ce23f634eb89.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8117ddc370b11e4ce9b184473be447dda94df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

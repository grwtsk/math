# Product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:254437b9446a82336953f5e83760afbb14315f1253e61665f0952d13e83255dd",
  "kind": "abbrev",
  "lexical_name": "Product",
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
  "slug": "product--d1804397ffcec10af96fc833",
  "source": {
    "blob": "44af56c7381a9a45ab97e45f78de00a2c26ef55f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1804397ffcec10af96fc8338c8618db0b01b866c6c649fb63e5cbbf5058e310",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:254437b9446a82336953f5e83760afbb14315f1253e61665f0952d13e83255dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Product (l : List ℕ) : Type :=
  ∀ i : Fin l.length, DihedralGroup l[i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44af56c7381a9a45ab97e45f78de00a2c26ef55f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

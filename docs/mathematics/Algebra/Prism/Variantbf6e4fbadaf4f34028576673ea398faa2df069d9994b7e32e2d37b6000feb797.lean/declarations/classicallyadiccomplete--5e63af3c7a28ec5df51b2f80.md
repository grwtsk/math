# ClassicallyAdicComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:664c4a94a9d06f40af1d40f14bef44e200d4a7eb30d1542274b5c6bd0b615352",
  "kind": "def",
  "lexical_name": "ClassicallyAdicComplete",
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
  "slug": "classicallyadiccomplete--5e63af3c7a28ec5df51b2f80",
  "source": {
    "blob": "4269c43a7f136e14c686d8b55632a81c7bca7686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e63af3c7a28ec5df51b2f80fbb22c59b48c661e3cdf364ea2321e038ff2a50a",
  "verification": {
    "reference": "docs/verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:664c4a94a9d06f40af1d40f14bef44e200d4a7eb30d1542274b5c6bd0b615352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ClassicallyAdicComplete (adicIdeal : Ideal A) : Prop :=
  ∀ sequence : AdicCompatibleSequence A adicIdeal,
    ∃! limit : A,
      ∀ level : Nat,
        limit - sequence.term level ∈ adicIdeal ^ (level + 1)

/--
A principal effective-Cartier ideal in this affine profile.  The regularity
clause is the non-zero-divisor witness missing from mere principality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4269c43a7f136e14c686d8b55632a81c7bca7686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# addCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d8f8abddb56553f5b1232ec016ef8d868d81a2a162d0a9a8e904f3f06ce51a7",
  "kind": "instance",
  "lexical_name": "addCommMonoid",
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
  "slug": "addcommmonoid--85e1db0a2d5513a30adf59ce",
  "source": {
    "blob": "1af272349ca41061dd44244a634559afd32b1604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e1db0a2d5513a30adf59cec9969a5132876c14855ae1efed7ad611320386c4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d8f8abddb56553f5b1232ec016ef8d868d81a2a162d0a9a8e904f3f06ce51a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommMonoid (n : ℕ) [NeZero n] : AddCommMonoid (Fin n) where
  zero_add := Fin.zero_add
  add_zero := Fin.add_zero
  nsmul := nsmulRec
  __ := Fin.addCommSemigroup n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af272349ca41061dd44244a634559afd32b1604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

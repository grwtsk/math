# OrderedCancelCommMonoid.to_contravariantClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f0ad473a812b3f6947b391d051181bf23b94b944d41bf9df80a41b764df4aba",
  "kind": "instance",
  "lexical_name": "OrderedCancelCommMonoid.to_contravariantClass_right",
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
  "slug": "orderedcancelcommmonoid-to-contravariantclass-right--baf4e647ba9327966a2481eb",
  "source": {
    "blob": "50c52bb012c782a648b1191c57d870781787b4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf4e647ba9327966a2481eb381c00a1c7a21be601e5fd38448c92eb9018f605",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f0ad473a812b3f6947b391d051181bf23b94b944d41bf9df80a41b764df4aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderedCancelCommMonoid.to_contravariantClass_right (M : Type*)
    [OrderedCancelCommMonoid M] :
    ContravariantClass M M (swap (· * ·)) (· < ·) :=
  contravariant_swap_mul_lt_of_contravariant_mul_lt M
#align ordered_cancel_comm_monoid.to_contravariant_class_right OrderedCancelCommMonoid.to_contravariantClass_right
#align ordered_cancel_add_comm_monoid.to_contravariant_class_right OrderedCancelAddCommMonoid.to_contravariantClass_right

-- see Note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c52bb012c782a648b1191c57d870781787b4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

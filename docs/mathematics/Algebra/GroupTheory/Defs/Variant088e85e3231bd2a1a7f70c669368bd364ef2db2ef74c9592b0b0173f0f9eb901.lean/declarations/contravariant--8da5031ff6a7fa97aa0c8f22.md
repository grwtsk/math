# Contravariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c90d42211660846b1857d19246f85a8f40f6c4b3ddcce57ecd897cbed3675a91",
  "kind": "def",
  "lexical_name": "Contravariant",
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
  "slug": "contravariant--8da5031ff6a7fa97aa0c8f22",
  "source": {
    "blob": "ad5e93e3df9831a5abd664c4f9773e2abe7888b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8da5031ff6a7fa97aa0c8f22d6d6cd14a6e8a35a89c41bd0dbf6c76e93401796",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c90d42211660846b1857d19246f85a8f40f6c4b3ddcce57ecd897cbed3675a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Contravariant : Prop :=
  ∀ (m) {n₁ n₂}, r (μ m n₁) (μ m n₂) → r n₁ n₂

/-- Given an action `μ` of a Type `M` on a Type `N` and a relation `r` on `N`, informally, the
`CovariantClass` says that "the action `μ` preserves the relation `r`."

More precisely, the `CovariantClass` is a class taking two Types `M N`, together with an "action"
`μ : M → N → N` and a relation `r : N → N → Prop`.  Its unique field `elim` is the assertion that
for all `m ∈ M` and all elements `n₁, n₂ ∈ N`, if the relation `r` holds for the pair
`(n₁, n₂)`, then, the relation `r` also holds for the pair `(μ m n₁, μ m n₂)`,
obtained from `(n₁, n₂)` by acting upon it by `m`.

If `m : M` and `h : r n₁ n₂`, then `CovariantClass.elim m h : r (μ m n₁) (μ m n₂)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5e93e3df9831a5abd664c4f9773e2abe7888b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

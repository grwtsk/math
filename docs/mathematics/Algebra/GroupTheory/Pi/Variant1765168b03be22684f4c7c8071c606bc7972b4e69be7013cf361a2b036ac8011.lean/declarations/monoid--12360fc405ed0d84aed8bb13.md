# monoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0a10764ecb8fcb0e48fc857ab563ecc9afb0c750e88ef509c8b67dfb7cf314d",
  "kind": "instance",
  "lexical_name": "monoid",
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
  "slug": "monoid--12360fc405ed0d84aed8bb13",
  "source": {
    "blob": "5ff8b220452cf4e18efc0efb8f487bb1d629cc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12360fc405ed0d84aed8bb1306bff3e30c0e49b249f9cff60fc286d17c0ea888",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0a10764ecb8fcb0e48fc857ab563ecc9afb0c750e88ef509c8b67dfb7cf314d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoid [∀ i, Monoid <| f i] : Monoid (∀ i : I, f i) :=
  { semigroup, mulOneClass with
    npow := fun n x i => x i ^ n
    --pi_instance
    npow_zero := by intros; ext; exact Monoid.npow_zero _
    npow_succ := by intros; ext; exact Monoid.npow_succ _ _
  }
#align pi.monoid Pi.monoid
#align pi.add_monoid Pi.addMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8b220452cf4e18efc0efb8f487bb1d629cc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

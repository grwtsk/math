# MulDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e925e582fd4d77b88bf93fe51aaf1b484689eed7f40e8166af94f719de5d8b40",
  "kind": "class",
  "lexical_name": "MulDistribMulAction",
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
  "slug": "muldistribmulaction--9efedc563f40a2e711fcf21c",
  "source": {
    "blob": "17767aa9b113d543c85ab3b806bf7765e1b0c87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 493,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9efedc563f40a2e711fcf21c7aea6945010e5c434e3d30c71948a3223d10adf8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e925e582fd4d77b88bf93fe51aaf1b484689eed7f40e8166af94f719de5d8b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulDistribMulAction (M N : Type*) [Monoid M] [Monoid N] extends MulAction M N where
  /-- Distributivity of `•` across `*` -/
  smul_mul : ∀ (r : M) (x y : N), r • (x * y) = r • x * r • y
  /-- Multiplying `1` by a scalar gives `1` -/
  smul_one : ∀ r : M, r • (1 : N) = 1

export MulDistribMulAction (smul_one)

section MulDistribMulAction
variable [Monoid M] [Monoid N] [MulDistribMulAction M N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17767aa9b113d543c85ab3b806bf7765e1b0c87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

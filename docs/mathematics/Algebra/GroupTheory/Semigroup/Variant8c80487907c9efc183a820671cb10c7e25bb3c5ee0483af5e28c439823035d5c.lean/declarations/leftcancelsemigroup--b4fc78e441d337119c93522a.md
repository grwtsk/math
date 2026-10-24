# LeftCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a070227af9ee5089bf414be0c122ce5e0a2bff5cf9deb27e4290bee949201907",
  "kind": "class",
  "lexical_name": "LeftCancelSemigroup",
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
  "slug": "leftcancelsemigroup--b4fc78e441d337119c93522a",
  "source": {
    "blob": "e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 271,
    "path": "GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4fc78e441d337119c93522abfd472b905c785afaa43a29e3db2cd60f7dcbbab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a070227af9ee5089bf414be0c122ce5e0a2bff5cf9deb27e4290bee949201907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LeftCancelSemigroup (G : Type*) extends Semigroup G, IsLeftCancelMul G

library_note «lower cancel priority» /--
We lower the priority of inheriting from cancellative structures.
This attempts to avoid expensive checks involving bundling and unbundling with the `IsDomain` class.
since `IsDomain` already depends on `Semiring`, we can synthesize that one first.
Zulip discussion: https://leanprover.zulipchat.com/#narrow/stream/113488-general/topic/Why.20is.20.60simpNF.60.20complaining.20here.3F
-/
attribute [instance 75] LeftCancelSemigroup.toSemigroup -- See note [lower cancel priority]

/-- An `AddLeftCancelSemigroup` is an additive semigroup such that
`a + b = a + c` implies `b = c`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

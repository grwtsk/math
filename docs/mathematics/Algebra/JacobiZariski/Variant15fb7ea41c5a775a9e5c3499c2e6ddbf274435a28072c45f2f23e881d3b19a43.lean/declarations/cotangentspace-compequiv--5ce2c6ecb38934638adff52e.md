# CotangentSpace.compEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb2ac364ce7cf04340515e2e646e37a305114e553a2e4f56506d37badb6480f0",
  "kind": "def",
  "lexical_name": "CotangentSpace.compEquiv",
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
  "slug": "cotangentspace-compequiv--5ce2c6ecb38934638adff52e",
  "source": {
    "blob": "769f0651401d0624885f2ff0a06ea91eff4028b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 119,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ce2c6ecb38934638adff52e2ace012348330148e7e2b9771469bc9893ec7db3",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb2ac364ce7cf04340515e2e646e37a305114e553a2e4f56506d37badb6480f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CotangentSpace.compEquiv (Q : Generators.{w} S T) (P : Generators.{w'} R S) :
    (Q.comp P).toExtension.CotangentSpace ≃ₗ[T]
      Q.toExtension.CotangentSpace × (T ⊗[S] P.toExtension.CotangentSpace) :=
  (Q.comp P).cotangentSpaceBasis.repr.trans
    (Q.cotangentSpaceBasis.prod (P.cotangentSpaceBasis.baseChange T)).repr.symm

section instanceProblem

-- Note: these instances are needed to prevent instance search timeouts.
attribute [local instance 999999] Zero.toOfNat0 SemilinearMapClass.distribMulActionSemiHomClass
  SemilinearEquivClass.instSemilinearMapClass TensorProduct.addZeroClass AddZeroClass.toZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769f0651401d0624885f2ff0a06ea91eff4028b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

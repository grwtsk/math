# instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3752f4fd826b226d16e3d2473d564ef224b9a2263d9a60f481280cf7cc569065",
  "kind": "instance",
  "lexical_name": "instAlgebra",
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
  "slug": "instalgebra--f40f92221548f95fa8b0a862",
  "source": {
    "blob": "322e3711b5122d38624d4482fe9d00475475c09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 86,
    "path": "GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f40f92221548f95fa8b0a862e6f2374c21762dfc6f98c170f345184ec6b33331",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3752f4fd826b226d16e3d2473d564ef224b9a2263d9a60f481280cf7cc569065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebra : Algebra R (UniversalEnvelopingAlgebra R L) :=
  inferInstanceAs (Algebra R (RingQuot (UniversalEnvelopingAlgebra.Rel R L)))
#align universal_enveloping_algebra.algebra UniversalEnvelopingAlgebra.instAlgebra


/-- The quotient map from the tensor algebra to the universal enveloping algebra as a morphism of
associative algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `322e3711b5122d38624d4482fe9d00475475c09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

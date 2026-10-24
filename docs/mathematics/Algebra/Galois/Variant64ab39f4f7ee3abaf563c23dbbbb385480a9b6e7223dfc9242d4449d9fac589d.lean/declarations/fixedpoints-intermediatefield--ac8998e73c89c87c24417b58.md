# FixedPoints.intermediateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d26e58f5de708f0c3def014f5bfc90c109d92fd5296dd09a215517f1eb9cf0e0",
  "kind": "def",
  "lexical_name": "FixedPoints.intermediateField",
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
  "slug": "fixedpoints-intermediatefield--ac8998e73c89c87c24417b58",
  "source": {
    "blob": "785413e9073c845e3058211914f7b568a4b81f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 185,
    "path": "GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8998e73c89c87c24417b588cba0c06afb380915eaf58d6a823d378c59d0c87",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d26e58f5de708f0c3def014f5bfc90c109d92fd5296dd09a215517f1eb9cf0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedPoints.intermediateField (M : Type*) [Monoid M] [MulSemiringAction M E]
    [SMulCommClass M F E] : IntermediateField F E :=
  { FixedPoints.subfield M E with
    carrier := MulAction.fixedPoints M E
    algebraMap_mem' := fun a g => by rw [Algebra.algebraMap_eq_smul_one, smul_comm, smul_one] }
#align fixed_points.intermediate_field FixedPoints.intermediateField

namespace IntermediateField

/-- The intermediate field fixed by a subgroup -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785413e9073c845e3058211914f7b568a4b81f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
